import 'package:shelf/shelf.dart';

class TeaRpc {
  // ignore: prefer_function_declarations_over_variables
  final handler = (Request request) async {
    if (request.method == "GET" && request.requestedUri.path == "/teas") {
      return Response.ok({"isSuccess": "true"});
    }

    return Response.notFound("Empty endpoint");
  };
}
