import 'package:web_socket_channel/web_socket_channel.dart';

class CounterRepo {
  final _channel = WebSocketChannel.connect(Uri.parse('ws://localhost:8080'));

  Future<void> get ready => _channel.ready;

  Stream<List<int>> get stream => _channel.stream.cast();

  void send(List<int> data) => _channel.sink.add(data);
}
