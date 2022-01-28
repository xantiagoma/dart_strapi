import 'package:dart_strapi/dart_strapi.dart';
import 'package:test/test.dart';

final serverURl = "http://localhost:1337/";

void main() {
  group('Strapi Client', () {
    test('Urls should match', () {
      final client = Strapi(serverURl);
      expect(client.baseUrl, serverURl);
    });

    test('Should add suffix if doesn\'t have one', () {
      final client = Strapi(serverURl.replaceFirst('1337/', '1337'));
      expect(client.baseUrl, serverURl);
    });

    test('Should add /api apiPath suffix', () {
      final client = Strapi(serverURl);
      expect(client.apiPath, 'api/');
    });

    test('Should get apiEndpint path', () {
      final client = Strapi(serverURl);
      expect(client.apiEndpoint, '${serverURl}api/');
    });
  });
}
