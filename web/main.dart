import 'package:sevr/sevr.dart';

void main() {
  var server = Sevr();
  server.use('./web');

  server.get('/status', [
    (serverRequest, servResponse) {
      return servResponse
          .status(200)
          .json({'status': 'ok', 'message': 'we are LIVE'});
    }
  ]);

  server.get('/test', [
    (serverRequest, servResponse) {
      return servResponse.status(200).json({'status': 'ok'});
    }
  ]);

  server.listen(4000, callback: () {
    print('Listening on port: ${4000}');
  });
}
