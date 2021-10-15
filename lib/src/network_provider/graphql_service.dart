import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oldwave/src/network_provider/constant.dart';

class GraphQlService {
  
  Future<QueryResult> graphQlService(String query) async {

    final HttpLink link = HttpLink(Constant.url_back_graphql);

    var client = GraphQLClient(
          link: link,
          cache: GraphQLCache(
            store: InMemoryStore(),
          ),
        );

    return await client.query(QueryOptions(document: gql(query)));
  }  
  
}