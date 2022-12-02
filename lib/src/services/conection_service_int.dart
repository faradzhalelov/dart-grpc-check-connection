import 'package:grpc_connection/src/generated/grpc_connection.pb.dart';
import 'package:grpc_connection/src/services/connection_service.impl.dart';

abstract class IConnectionServices {
  factory IConnectionServices() => ConnectionServices();
  Message? checkConnection(Message message);
}

final connectionServices = ConnectionServices();
