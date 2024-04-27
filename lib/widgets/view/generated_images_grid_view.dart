import 'package:aipictors/graphql/generation/__generated__/viewer_image_generation_tasks.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/image/grid_work_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 探索・人気の作品
class GeneratedImagesGridView extends HookConsumerWidget {
  const GeneratedImagesGridView({
    super.key,
  });

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);
    final config = ref.watch(configProvider);

    if (client.value == null) {
      return const LoadingContainer();
    }

    final request = GViewerImageGenerationTasksReq((builder) {
      builder
        ..vars.offset = 0
        ..vars.limit = config.graphqlQueryLimit;
    });

    return Column(
      children: [
        FilledButton(
            onPressed: () {
              final req = request.rebuild((builder) {
                builder
                  ..vars.limit = config.graphqlQueryLimit
                  ..vars.offset = 0;
              });
              client.value?.requestController.add(req);
            },
            child: const Text('更新')),
        OperationBuilder(
          client: client.value!,
          operationRequest: request,
          builder: (context, response) {
            final taskList = response.data?.viewer!.imageGenerationTasks;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: taskList!.length,
              itemBuilder: (context, index) {
                final task = taskList[index];
                //print(task.token);
                return InkWell(
                  onTap: () {
                    // context.push('/generations/${image.id}');
                  },
                  // TODO: 生成中は違うコンポーネントにする
                  child: GridWorkImage(
                    imageURL:
                        'https://www.aipictors.com/wp-content/themes/AISite/private-image-direct.php?token=${Uri.encodeComponent(task.token!)}',
                    imageAspectRatio: 1,
                    thumbnailImagePosition: null,
                  ),
                );
              },
            );
          },
        )
      ],
    );
  }
}
