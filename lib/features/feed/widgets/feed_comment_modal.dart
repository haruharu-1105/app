import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/feed/widgets/__generated__/feed_comment_modal.req.gql.dart';
import 'package:aipictors/features/post/functions/create_work_comment.dart';
import 'package:aipictors/features/post/widgets/work_comment_form.dart';
import 'package:aipictors/features/post/widgets/work_comment_list_tile.dart';
import 'package:aipictors/providers/auth_state_provider.dart';
import 'package:aipictors/providers/auth_user_id_provider.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/error/unexpected_error_container.dart';
import 'package:aipictors/widgets/loading_progress.dart';
import 'package:aipictors/widgets/modal_header.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FeedCommentModal extends HookConsumerWidget {
  const FeedCommentModal({
    super.key,
    required this.workId,
  });

  final String workId;

  @override
  Widget build(context, ref) {
    final authState = ref.watch(authStateProvider);

    final client = ref.watch(clientProvider);

    final authUserId = ref.watch(authUserIdProvider);

    if (client.value == null) {
      return const LoadingProgress();
    }

    final request = GFeedCommentListReq((builder) {
      builder.vars.workId = workId;
    });

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          child: Column(
            children: [
              ModalHeaderContainer(
                title: Text(
                  'コメント'.i18n,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Operation(
                    client: client.value!,
                    operationRequest: GFeedCommentListReq((builder) {
                      builder.vars.workId = workId;
                    }),
                    builder: (context, response, error) {
                      if (error != null) {
                        return const Center(child: UnexpectedErrorContainer());
                      }
                      if (response == null || response.loading) {
                        return const Center(child: LoadingProgress());
                      }
                      if (response.graphqlErrors != null) {
                        return const Center(child: UnexpectedErrorContainer());
                      }
                      final commentList = response.data?.work?.comments;
                      if (commentList == null || commentList.isEmpty) {
                        return const Center(child: DataEmptyErrorContainer());
                      }
                      return Column(children: [
                        for (final comment in commentList)
                          Column(
                            children: [
                              WorkCommentListTile(
                                comment: comment,
                                isResponse: false,
                                isMine: authUserId.value == comment.user!.id,
                                onDelete: () async {
                                  client.value?.requestController.add(request);
                                },
                              ),
                              for (final response in comment.responses!)
                                WorkCommentListTile(
                                  comment: response,
                                  isResponse: true,
                                  isMine: authUserId.value == comment.user!.id,
                                  onDelete: () async {
                                    client.value?.requestController.add(
                                      request,
                                    );
                                  },
                                ),
                            ],
                          )
                      ]);
                    },
                  ),
                ),
              ),
              const Divider(height: 0),
              if (authState.value?.uid == null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8 * 2,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton.tonal(
                      onPressed: null,
                      child: Text('ログインするとコメントできます'.i18n),
                    ),
                  ),
                ),
              if (authState.value?.uid != null)
                WorkCommentForm(
                  onSubmit: (text, stickerId) async {
                    await createWorkComment((builder) {
                      return builder
                        ..vars.input.workId = workId
                        ..vars.input.text = text
                        ..vars.input.stickerId = stickerId;
                    });
                    client.value?.requestController.add(request);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
