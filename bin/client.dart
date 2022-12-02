import 'dart:async';
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:grpc_connection/src/generated/grpc_connection.pbgrpc.dart';

class Client {
  ClientChannel? channel;
  ConnectionServiceClient? stub;
  dynamic message;
  String? response;
  bool? isConnected;
  Future<void> main() async {
    channel = ClientChannel('localhost',
        port: 50000,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    stub = ConnectionServiceClient(channel!,
        options: CallOptions(timeout: Duration(seconds: 5)));

    while (true) {
      try {
        print('enter connection status...');
        message =
            await stub?.checkConnection(Message(message: stdin.readLineSync()));
        response = message.toString();
        print(response);
        if (response!.contains('ok')) {
          isConnected = true;
        } else {
          isConnected = false;
        }
      } catch (e) {
        print("Соединение нет");
        break;
      } finally {
        print('connection status: $isConnected');
      }
      await Future.delayed(Duration(seconds: 5));
      print('delay: 10sec');
    }
  }
}

main() {
  var client = Client();
  client.main();
}