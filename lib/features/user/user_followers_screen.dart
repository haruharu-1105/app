import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/home/widgets/data_not_found_error_screen.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/features/user/__generated__/user_followers.req.gql.dart';
import 'package:aipictors/features/user/empty_data_error_screen.dart';
import 'package:aipictors/features/user/widgets/follower_list_tile.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ユーザのフォロワーの一覧
class UserFollowersScreen extends HookConsumerWidget {
  const UserFollowersScreen({
    super.key,
    required this.userId,
  });

  final String userId;

  @override
  Widget build(context, ref) {
    final config = ref.watch(configProvider);

    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingScreen();
    }

    final request = GUserFollowersReq((builder) {
      builder
        ..vars.limit = config.graphqlQueryLimit
        ..vars.offset = 0
        ..vars.user_id = userId;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('フォロワー'.i18n),
      ),
      body: OperationBuilder(
        client: client.value!,
        operationRequest: request,
        builder: (context, response) {
          final followerList = response.data?.user?.followers;
          if (followerList == null) {
            return const DataNotFoundErrorScreen();
          }
          if (followerList.isEmpty) {
            return const EmptyDataErrorScreen();
          }
          return ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: followerList.length,
            itemBuilder: (context, index) {
              final user = followerList[index];
              return FollowerUserListTile(
                user: user,
                onTap: () {
                  context.push('/users/${user.id}');
                },
              );
            },
          );
        },
      ),
    );
  }
}
