# dart_strapi

## Usage

A simple usage example:

```dart
import 'package:dart_strapi/dart_strapi.dart';

void main() async {
final strapiClient = Strapi(
    'https://server.app',
    token: 'token',
  );

  final records = await strapiClient.find('lines', queryParameters: {});
}
```

Check [Examples](./example/dart_strapi_example.dart) for more
