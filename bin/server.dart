import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc_connection/src/generated/grpc_connection.pbgrpc.dart';
import 'package:grpc_connection/src/services/conection_service_int.dart';

class ConnectionService extends ConnectionServiceBase {
  @override
  Future<Message> checkConnection(
          grpc.ServiceCall call, Message request) async =>
      connectionServices.checkConnection(request)!;
}

Future<void> main(List<String> args) async {
  final server = grpc.Server([ConnectionService()]);
  await server.serve(port: 50000);
  print('Server listening...');
}
