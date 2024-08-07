import 'package:aipictors/features/notification/widgets/notification_image_container_medium.dart';
import 'package:aipictors/features/notification/widgets/notification_user_container.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationWorkCommentReplyListTileMedium extends HookConsumerWidget {
  const NotificationWorkCommentReplyListTileMedium({
    super.key,
    required this.createdAt,
    required this.message,
    required this.userId,
    required this.userName,
    required this.userIconImageURL,
    required this.workId,
    required this.workTitle,
    required this.workImageURL,
    required this.stickerImageURL,
  });

  final int createdAt;

  final String? message;

  final String? userId;

  final String? userName;

  final String? userIconImageURL;

  final String? workId;

  final String? workTitle;

  final String? workImageURL;

  final String? stickerImageURL;

  @override
  Widget build(context, ref) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        right: 16,
        left: 16,
        top: 0,
        bottom: 0,
      ),
      onTap: () {
        if (workId == null) return;
        FirebaseAnalytics.instance.logSelectContent(
          contentType: 'work',
          itemId: workId!,
        );
        context.push('/works/$workId');
      },
      onLongPress: () {
        if (userId == null) return;
        FirebaseAnalytics.instance.logSelectContent(
          contentType: 'userId',
          itemId: userId!,
        );
        context.push('/users/$userId');
      },
      leading: const Icon(Icons.call_missed_outgoing_rounded),
      trailing: NotificationImageContainerMedium(
        workImageURL: workImageURL,
        workTitle: workTitle,
      ),
      title: NotificationUserContainer(
          userName: userName, userIconImageURL: userIconImageURL),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (message != null)
            Text(
              message!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          if (message != null) const SizedBox(height: 8),
          if (stickerImageURL != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: stickerImageURL!,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
        ],
      ),
    );
  }
}
