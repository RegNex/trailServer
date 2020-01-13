import 'package:sevr/sevr.dart';

void main() {
  var server = Sevr();

  server.get('/live', [
    (ServRequest serverRequest, ServResponse servResponse) {
      return servResponse.status(200).json({'status': 'ok'});
    }
  ]);

  server.get('/', [
    (ServRequest serverRequest, ServResponse servResponse) {
      return servResponse.status(200).json({'status': 'ok'});
    }
  ]);

    server.listen(4000, callback: () {
    print('Listening on port: ${4000}');
  });
}
