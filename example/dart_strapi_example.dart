import 'package:dart_strapi/dart_strapi.dart';

void main() async {
  final strapiClient = Strapi();
  strapiClient.initialize();

  final x4 = await strapiClient.deleteById('stations', 4.toString());
  print('Delete 4: $x4');
  final count = await strapiClient.count('stations');
  print('Count: $count');
}
