import 'package:aipictors/features/folder/mutations/__generated__/create_folder.data.gql.dart';
import 'package:aipictors/features/folder/mutations/__generated__/create_folder.req.gql.dart';
import 'package:aipictors/utils/mutate.dart';

typedef Fn<T> = T Function(T);

typedef Builder = Fn<GCreateFolderReqBuilder>;

Future<GCreateFolderData?> createFolder(Builder b) async {
  return mutate(GCreateFolderReq(b));
}
