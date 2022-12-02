import 'package:grpc_connection/src/generated/grpc_connection.pb.dart';
import 'package:grpc_connection/src/services/conection_service_int.dart';

class ConnectionServices implements IConnectionServices {
  @override
  Message? checkConnection(Message message) {
    if (message.message.toLowerCase() == 'ok') {
      return Message(message: 'ok');
    } else {
      return Message(message: '404');
    }
  }
}
