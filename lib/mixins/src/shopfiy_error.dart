import 'package:graphql/client.dart';

mixin ShopifyError {
  void checkForError(QueryResult queryResult){
    print("EXCEPTION: ${queryResult.exception}");
    if(queryResult.hasException)
      throw Exception(queryResult.exception.toString());
  }
}