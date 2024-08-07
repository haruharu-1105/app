import 'package:aipictors/features/notification/widgets/notification_user_container.dart';
import 'package:aipictors/features/post/widgets/sticker_image.dart';
import 'package:aipictors/fragments/__generated__/comment_fields_fragment.data.gql.dart';
import 'package:aipictors/utils/to_readable_date_time.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WorkCommentListTile extends HookConsumerWidget {
  const WorkCommentListTile({
    super.key,
    required this.comment,
    required this.isResponse,
    required this.onTap,
    required this.onLongPress,
  });

  final GCommentFields comment;

  final bool isResponse;

  final VoidCallback onTap;

  final VoidCallback onLongPress;

  @override
  Widget build(context, ref) {
    return ListTile(
      minVerticalPadding: 0,
      onTap: () {
        onTap();
      },
      onLongPress: () {
        onLongPress();
      },
      leading: isResponse
          ? Icon(
              Icons.subdirectory_arrow_right_rounded,
              color: Theme.of(context).disabledColor,
            )
          : null,
      title: Column(
        children: [
          const SizedBox(height: 16),
          NotificationUserContainer(
            userName: comment.user?.name,
            userIconImageURL: comment.user?.iconImage?.downloadURL,
          ),
          const SizedBox(height: 8),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (comment.sticker == null && comment.text.isEmpty) const Text('-'),
          if (comment.text.isNotEmpty) Text(comment.text),
          if (comment.sticker != null) const SizedBox(height: 4),
          if (comment.sticker != null)
            StickerImage(
              imageURL: comment.sticker!.imageUrl,
            ),
          const SizedBox(height: 8),
          Text(
            toReadableDateTime(comment.createdAt),
            softWrap: true,
            style: TextStyle(
              color: Theme.of(context).dividerColor,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
