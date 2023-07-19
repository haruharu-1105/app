import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationImageContainerMedium extends HookConsumerWidget {
  const NotificationImageContainerMedium({
    Key? key,
    required this.workTitle,
    required this.workImageURL,
  }) : super(key: key);

  final String? workTitle;

  final String? workImageURL;

  @override
  Widget build(context, ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            workImageURL!,
            fit: BoxFit.cover,
            width: 80,
            height: 80,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          workTitle!,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
