import 'package:aipictors/cache.dart';
import 'package:aipictors/config.dart';
import 'package:ferry/ferry.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gql_http_link/gql_http_link.dart';

Future<Client> createClient() async {
  final cache = createCache();

  final token = await FirebaseAuth.instance.currentUser?.getIdToken(false);

  final httpLink = HttpLink(
    DefaultConfig.graphqlURI,
    defaultHeaders: {
      'secret': DefaultConfig.graphqlSecret,
      if (token != null) 'authorization': 'Bearer $token',
    },
  );

  return Client(
    link: httpLink,
    cache: cache,
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.CacheAndNetwork,
    },
  );
}
