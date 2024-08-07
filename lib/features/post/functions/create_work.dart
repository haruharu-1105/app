import 'package:aipictors/features/post/mutations/__generated__/create_work.data.gql.dart';
import 'package:aipictors/features/post/mutations/__generated__/create_work.req.gql.dart';
import 'package:aipictors/utils/mutate.dart';

typedef Fn<T> = T Function(T);

typedef Builder = Fn<GCreateWorkReqBuilder>;

Future<GCreateWorkData?> createWork(Builder b) {
  return mutate(GCreateWorkReq(b));
}
