import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/graphql/__generated__/sticker.req.gql.dart';
import 'package:aipictors/graphql/mutations/__generated__/create_user_sticker.data.gql.dart';
import 'package:aipictors/graphql/mutations/__generated__/delete_user_sticker.data.gql.dart';
import 'package:aipictors/mutations/delete_user_sticker.dart';
import 'package:aipictors/mutations/follow_user.dart';
import 'package:aipictors/mutations/create_user_sticker.dart';
import 'package:aipictors/providers/auth_user_id_provider.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/screens/error/data_not_found_error_screen.dart';
import 'package:aipictors/screens/loading_screen.dart';
import 'package:aipictors/widgets/builder/operation_screen_builder.dart';
import 'package:aipictors/widgets/button/create_user_sticker_button.dart';
import 'package:aipictors/widgets/button/follow_button.dart';
import 'package:aipictors/widgets/container/modal/sticker_action_modal_container.dart';
import 'package:aipictors/widgets/container/sticker_categories_container.dart';
import 'package:aipictors/widgets/container/sticker_genre_container.dart';
import 'package:aipictors/widgets/container/sticker_status_container.dart';
import 'package:aipictors/widgets/container/work_user_profile_container.dart';
import 'package:aipictors/widgets/image/interactive_work_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// スタンプの詳細
class StickerScreen extends HookConsumerWidget {
  const StickerScreen({
    super.key,
    required this.stickerId,
  });

  final String stickerId;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);
    final authUserId = ref.watch(authUserIdProvider);

    if (client.value == null) {
      return const LoadingScreen();
    }

    final request = GStickerReq((builder) {
      builder.vars.id = stickerId;
    });

    return OperationScreenBuilder(
      client: client.value!,
      operationRequest: request,
      builder: (context, response) {
        final sticker = response.data?.sticker;
        if (sticker == null) {
          return const DataNotFoundErrorScreen();
        }
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text('スタンプ'.i18n),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_horiz_rounded),
                onPressed: () {
                  onOpenActionModal(
                    context,
                    userId: sticker.user.id,
                    userName: sticker.user.name,
                    isMutedUser: sticker.user.viewer?.isMuted == true,
                  );
                },
              ),
            ],
          ),
          extendBody: true,
          body: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: WorkUserProfileContainer(user: sticker.user),
                          ),
                          if (authUserId.value != null &&
                              authUserId.value != sticker.user.id)
                            FollowButton(
                              isActive: sticker.user.viewer?.isFollowee == true,
                              onPressed: () {
                                return onFollowUser(
                                  context,
                                  userId: sticker.user.id,
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8 * 1.5),
                    InteractiveWorkImage(
                      downloadURL: sticker.image!.downloadURL,
                    ),
                    const SizedBox(height: 8 * 2),
                    StickerStatusContainer(
                        downloadsCount: sticker.downloadsCount,
                        usesCount: sticker.usesCount),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        sticker.title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    StickerGenreContainer(genre: sticker.genre.toString().i18n),
                    const SizedBox(height: 8 * 1.5),
                    StickerCategoriesContainer(
                        categories: sticker.categories.toList()),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: (authUserId.value != null)
              ? Padding(
                  padding: const EdgeInsets.all(8),
                  child: CreateUserStickerButton(
                    isActive: sticker.isDownloaded,
                    onPressed: () {
                      // スタンプ削除
                      if (sticker.isDownloaded) {
                        return onDeleteUserSticker(
                          context,
                          stickerId: stickerId,
                          client: client.value!,
                          request: request,
                        );
                      }
                      //スタンプ追加
                      else {
                        return onCreateUserSticker(
                          context,
                          stickerId: stickerId,
                          client: client.value!,
                          request: request,
                        );
                      }
                    },
                  ),
                )
              : null,
        );
      },
    );
  }

  onOpenActionModal(
    BuildContext context, {
    required String userId,
    required String userName,
    required bool isMutedUser,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StickerActionModalContainer(
          stickerId: stickerId,
          userId: userId,
          userName: userName,
          isMutedUser: isMutedUser,
        );
      },
    );
  }

  /// フォローする
  onFollowUser(BuildContext context, {required String userId}) {
    return followUser((builder) {
      return builder..vars.input.userId = userId;
    });
  }

  /// マイスタンプに追加する
  onCreateUserSticker(
    BuildContext context, {
    required String stickerId,
    required Client client,
    required GStickerReq request,
  }) async {
    GCreateUserStickerData? response = await createUserSticker((builder) {
      return builder..vars.input.stickerId = stickerId;
    });
    client.requestController.add(request);
    return response;
  }

  /// マイスタンプから削除する
  onDeleteUserSticker(
    BuildContext context, {
    required String stickerId,
    required Client client,
    required GStickerReq request,
  }) async {
    GDeleteUserStickerData? response = await deleteUserSticker((builder) {
      return builder..vars.input.stickerId = stickerId;
    });
    client.requestController.add(request);
    return response;
  }
}
