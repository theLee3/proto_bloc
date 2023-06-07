import 'dart:io';

import 'package:protos/protos.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main(List<String> args) async {
  final sockets = <WebSocketChannel>[];
  final state = CounterState();

  final handler = webSocketHandler((WebSocketChannel socket) {
    socket.stream.listen((message) {
      final event = CounterEvent.fromBuffer(message);
      if (event.type == CounterEvent_Type.INCREMENT) {
        state.value++;
      } else if (event.type == CounterEvent_Type.DECREMENT) {
        state.value--;
      }
      for (final socket in sockets) {
        socket.sink.add(state.writeToBuffer());
      }
    }, onDone: () {
      sockets.remove(socket);
    });
    sockets.add(socket);
    socket.sink.add(state.writeToBuffer());
  });

  final server = await serve(handler, InternetAddress.anyIPv4, 8080);
  print('Server listening on port ${server.port}');
}
