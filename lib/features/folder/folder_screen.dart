import 'package:aipictors/features/folder/__generated__/folder_screen.req.gql.dart';
import 'package:aipictors/features/folder/widgets/folder_work_list_view.dart';
import 'package:aipictors/features/home/widgets/data_not_found_error_screen.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_screen_builder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// フォルダの詳細
class FolderScreen extends HookConsumerWidget {
  const FolderScreen({
    super.key,
    required this.folderId,
  });

  final String folderId;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingScreen();
    }

    return OperationScreenBuilder(
      client: client.value!,
      operationRequest: GFolderScreenReq((builder) {
        builder.vars.id = folderId;
      }),
      builder: (context, response) {
        final folder = response.data?.folder;
        if (folder == null) {
          return const DataNotFoundErrorScreen();
        }
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(
              folder.title,
              maxLines: 2,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          extendBody: true,
          body: FolderWorkListView(
            client: client.value!,
            folderId: folderId,
          ),
        );
      },
    );
  }
}
