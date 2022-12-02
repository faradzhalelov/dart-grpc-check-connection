## simple dart grpc server-client console app:
- A sample command-line application with an entrypoint in `bin/`, library code in `lib/`

## run:
- server: dart .\bin\server.dart
- client: dart .\bin\client.dart

## how it works:
- start server
- server listening
- start client
- check connection to google.com
* if (ok) => print 'message: ok'
* else => print 'Соединения нет' //no connection
- 15 sec delay to reconnect
