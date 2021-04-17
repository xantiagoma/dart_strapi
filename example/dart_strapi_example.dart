import 'package:dart_strapi/dart_strapi.dart';

void main() async {
  final strapiClient = Strapi(
    'https://server.app',
    // token: 'token',
  );

  // strapiClient.token = 'token';

  // final records = await strapiClient.find('lines', queryParameters: {});
  // print(records);

  // final record =
  //     await strapiClient.findOne('lines', '5e44abbb7764fe87bd959434');
  // print(record);

  // final count = await strapiClient.count(
  //   'lines',
  //   queryParameters: {'color': '#0054A4'},
  // );
  // print(count);

  // final page = await strapiClient.create(
  //   'pages',
  //   {'id': 'lalala', 'title': 'lalala test'},
  //   options: Options(
  //     headers: {
  //       'Authorization': 'Bearer token',
  //     },
  //   ),
  // );

  // final page = await strapiClient.update(
  //   Entry(
  //     collectionName: 'pages',
  //     id: Identifier.string('607a5dbea8c1a80015805eed'),
  //     data: {
  //       'title': 'lalaa test 2',
  //     },
  //   ),
  //   options: Options(
  //     headers: {
  //       'Authorization': 'Bearer token',
  //     },
  //   ),
  // );
  // print(page);

  // final page = await strapiClient.remove(
  //   Entry(
  //     collectionName: 'pages',
  //     id: Identifier.string('607a5bffa8c1a80015805eec'),
  //   ),
  //   options: Options(
  //     headers: {
  //       'Authorization': 'Bearer token',
  //     },
  //   ),
  // );
  // print(page);

  // final page = await strapiClient.removeById(
  //   'pages',
  //   '607a5be6a8c1a80015805eeb',
  //   options: Options(
  //     headers: {
  //       'Authorization': 'Bearer token',
  //     },
  //   ),
  // );
  // print(page);

  // final page = await strapiClient.update(
  //   Entry(
  //     collectionName: 'pages',
  //     id: Identifier.string('607a5852a8c1a80015805eea'),
  //     data: {
  //       'title': 'Ex3',
  //     },
  //   ),
  // );
  // print(page);
  //

  // final resp = await strapiClient.register(
  //   'testing1',
  //   'testing1@gmail.co',
  //   'password123*',
  // );

  // final resp = await strapiClient.login(
  //   'testing1',
  //   'password123*',
  // );

  // final resp = await strapiClient.forgotPassword(
  //   'testing1@gmail.co',
  // );

  // final resp = await strapiClient.me(
  //   options: Options(
  //     headers: {
  //       'Authorization': 'Bearer token',
  //     },
  //   ),
  // );

  // print(resp);

  // final labels = await strapiClient.get('labels');

  // print(labels);
}
