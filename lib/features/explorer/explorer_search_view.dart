import 'package:aipictors/features/explorer/__generated__/explorer_search_view.req.gql.dart';
import 'package:aipictors/features/explorer/widgets/explorer_post_grid_item.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/error/data_not_found_error_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 探索・検索結果
class ExplorerSearchView extends HookConsumerWidget {
  const ExplorerSearchView({
    super.key,
    required this.search,
  });

  final String search;

  @override
  Widget build(context, ref) {
    final config = ref.watch(configProvider);

    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingScreen();
    }

    return OperationBuilder(
      client: client.value!,
      operationRequest: GExplorerSearchViewReq((builder) {
        builder
          ..vars.limit = config.graphqlQueryLimit
          ..vars.offset = 0
          ..vars.where.search = search;
      }),
      builder: (context, response) {
        final workList = response.data?.works;
        if (workList == null) {
          return const DataNotFoundErrorContainer();
        }
        if (workList.isEmpty) {
          return const DataEmptyErrorContainer();
        }
        return GridView.builder(
          physics: const ClampingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: workList.length,
          itemBuilder: (context, index) {
            final work = workList[index];
            return ExplorerPostGridItem(work: work);
          },
        );
      },
    );
  }
}
