## simple dart grpc server-client console app:
- A sample command-line application with an entrypoint in `bin/`, library code in `lib/`

## run:
- server: dart .\bin\server.dart
- client: dart .\bin\client.dart

## how it works:
- start server
- server listening
- start client
- enter connection status:
* if (ok) => message: ok
* else => message: 404
- 5 sec delay to reconnect
