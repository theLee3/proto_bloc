import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

void main(List<String> args) async {
  // TODO: Configure a websocket handler that processes events from clients.
  handler(request) async => Response.notFound(null);

  final server = await serve(handler, InternetAddress.anyIPv4, 8080);
  print('Server listening on port ${server.port}');
}
