# dart_strapi

## Usage

A simple usage example:

```dart
import 'package:dart_strapi/dart_strapi.dart';

void main() async {
  final strapiClient = Strapi.newClient();
  strapiClient.initialize(token: 'token');

  final records = await strapiClient.find('record', queryParameters: {
    'amount_gt': 90,
  });

  final list = records.map((e) => e.toMap()).toList();

  print('$list');

  // using client directly - any other endpoint
  final json = await strapiClient.http.get('/lines/count');
  print('list#: $json');
}
```
