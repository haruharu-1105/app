import 'package:aipictors/__generated__/schema.schema.gql.dart';
import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/home/widgets/data_not_found_error_screen.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/features/sticker/__generated__/sticker.req.gql.dart';
import 'package:aipictors/features/sticker/deleted_sticker_error_screen.dart';
import 'package:aipictors/features/sticker/functions/create_user_sticker.dart';
import 'package:aipictors/features/sticker/functions/delete_user_sticker.dart';
import 'package:aipictors/features/sticker/functions/update_bookmarked_sticker.dart';
import 'package:aipictors/features/sticker/mutations/__generated__/create_user_sticker.data.gql.dart';
import 'package:aipictors/features/sticker/mutations/__generated__/delete_user_sticker.data.gql.dart';
import 'package:aipictors/features/sticker/mutations/__generated__/update_bookmarked_sticker.data.gql.dart';
import 'package:aipictors/features/sticker/utils/to_sticker_genre_text.dart';
import 'package:aipictors/features/sticker/widgets/create_user_sticker_button.dart';
import 'package:aipictors/features/sticker/widgets/sticker_action_modal.dart';
import 'package:aipictors/features/sticker/widgets/sticker_bookmark_dialog.dart';
import 'package:aipictors/features/sticker/widgets/sticker_categories.dart';
import 'package:aipictors/features/sticker/widgets/sticker_category.dart';
import 'package:aipictors/features/sticker/widgets/sticker_status.dart';
import 'package:aipictors/features/sticker/widgets/sticker_user_profile.dart';
import 'package:aipictors/features/user/functions/follow_user.dart';
import 'package:aipictors/features/user/widgets/follow_button.dart';
import 'package:aipictors/providers/auth_user_id_provider.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_screen_builder.dart';
import 'package:aipictors/widgets/image/interactive_work_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        if (sticker.isDeleted) {
          return const DeletedStickerErrorScreen();
        }
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text('スタンプ'.i18n),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_horiz_rounded),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return StickerActionModal(sticker: sticker);
                    },
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
                            child: StickerUserProfile(user: sticker.user),
                          ),
                          if (authUserId.value != null &&
                              authUserId.value != sticker.user.id)
                            FollowButton(
                              isActive: sticker.user.isFollowee == true,
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
                    if (sticker.imageUrl != null)
                      const SizedBox(height: 8 * 1.5),
                    if (sticker.imageUrl != null)
                      InteractiveWorkImage(
                        downloadURL: sticker.imageUrl!,
                      ),
                    const SizedBox(height: 8 * 2),
                    StickerStatus(sticker: sticker),
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
                    StickerCategory(
                      category: toStickerGenreText(sticker.genre),
                    ),
                    const SizedBox(height: 8 * 1.5),
                    StickerCategories(
                      sticker: sticker,
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: (authUserId.value != null)
              ? Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
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
                      ),
                      IconButton(
                        icon: (sticker.isBookmarkedForComment ||
                                sticker.isBookmarkedForReply)
                            ? Icon(
                                Icons.bookmark_rounded,
                                color: Theme.of(context).colorScheme.primary,
                              )
                            : const Icon(Icons.bookmark_add_outlined),
                        onPressed: (sticker.isDownloaded)
                            ? () {
                                onShowBookmarkDialog(
                                  context,
                                  stickerId: stickerId,
                                  isBookmarkedForComment:
                                      sticker.isBookmarkedForComment,
                                  isBookmarkedForReply:
                                      sticker.isBookmarkedForReply,
                                  client: client.value!,
                                  request: request,
                                );
                              }
                            : null,
                      ),
                    ],
                  ),
                )
              : null,
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

  onShowBookmarkDialog(
    BuildContext context, {
    required String stickerId,
    required Client client,
    required GStickerReq request,
    required bool isBookmarkedForComment,
    required bool isBookmarkedForReply,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return StickerBookmarkDialog(
          isBookmarkedForComment: isBookmarkedForComment,
          isBookmarkedForReply: isBookmarkedForReply,
          onCancel: () {
            context.pop();
          },
          onSubmit: (bool comment, bool reply) {
            context.pop();
            onUpdateBookmarkedSticker(
              context,
              stickerId: stickerId,
              client: client,
              isBookmarked: comment,
              type: GBookmarkedStickerType.comment,
              request: request,
            );
            onUpdateBookmarkedSticker(
              context,
              stickerId: stickerId,
              client: client,
              isBookmarked: reply,
              type: GBookmarkedStickerType.reply,
              request: request,
            );
            // スタンプがコメント用または返信用にブックマークされている場合
            if (comment || reply) {
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text('スタンプをブックマークしました。'.i18n)),
                );
            }
            // スタンプのブックマークを解除した場合
            else {
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text('スタンプのブックマークを解除しました。'.i18n)),
                );
            }
          },
        );
      },
    );
  }

  /// ブックマークする
  onUpdateBookmarkedSticker(
    BuildContext context, {
    required String stickerId,
    required Client client,
    required GStickerReq request,
    required bool isBookmarked,
    required GBookmarkedStickerType type,
  }) async {
    GUpdateBookmarkedStickerData? response =
        await updateBookmarkedSticker((builder) {
      return builder
        ..vars.input.stickerId = stickerId
        ..vars.input.isBookmarked = isBookmarked
        ..vars.input.type = type;
    });
    client.requestController.add(request);
    return response;
  }
}
