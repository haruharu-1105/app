import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/config/__generated__/viewer_muted_tags.req.gql.dart';
import 'package:aipictors/features/config/widgets/muted_tag_list_tile.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/error/unexpected_error_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 設定・ミュートしたタグ
class ConfigMutedTagsScreen extends HookConsumerWidget {
  const ConfigMutedTagsScreen({
    super.key,
  });

  @override
  Widget build(context, ref) {
    final config = ref.watch(configProvider);

    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingScreen();
    }

    final request = GViewerMutedTagsReq((builder) {
      builder
        ..vars.limit = config.graphqlQueryLimit
        ..vars.offset = 0;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('ミュートしたタグ'.i18n),
      ),
      body: OperationBuilder(
        client: client.value!,
        operationRequest: request,
        builder: (context, response) {
          final tagList = response.data?.viewer?.mutedTags;
          if (tagList == null) {
            return const UnexpectedErrorContainer();
          }
          if (tagList.isEmpty) {
            return DataEmptyErrorContainer(
              message: 'ミュートしたタグは無いみたい。'.i18n,
            );
          }
          return ListView.builder(
            itemCount: tagList.length,
            itemBuilder: (context, index) {
              final tag = tagList[index];
              return MutedTagListTile(tag: tag);
            },
          );
        },
      ),
    );
  }
}
