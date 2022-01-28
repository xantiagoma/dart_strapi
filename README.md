# dart_strapi

dart client for [Strapi V4](https://strapi.io/v4)

> For [Strapi V3](https://docs-v3.strapi.io/) client check [v1.2.0](https://pub.dev/packages/dart_strapi/versions/1.2.0)


## Example

```dart
import 'package:dart_strapi/dart_strapi.dart';

final serverUrl = 'http://localhost:1337';
final authToken = '<token>';
final collection = '<collectionType>';
final single = '<singleType>';

void main() async {
  final client = Strapi(
    serverUrl,
    token: authToken,
  );

  final singleResponse = await client.single.get(single);
  print("Single Response: $singleResponse");
  print("Data: ${singleResponse.item1}");
  print("Meta: ${singleResponse.item2}");
  print("\n----------------------------------------------------\n");

  final singleNotFoundResponse = await client.single.get("lalala");
  print("Single Not Found Response: $singleNotFoundResponse"); // [null, null]
  print("Data: ${singleNotFoundResponse.item1}"); // null
  print("Meta: ${singleNotFoundResponse.item2}"); // null
  print("\n----------------------------------------------------\n");

  final collectionResponse = await client.collection.get(collection);
  print("Collection Response: $collectionResponse");
  print("Data: ${collectionResponse.item1}");
  print("Meta: ${collectionResponse.item2}");
  print("\n----------------------------------------------------\n");

  final collectionNotFoundResponse = await client.collection.get('rarara');
  print("Collection Not Found Response: $collectionNotFoundResponse"); // [null, null]
  print("Data: ${collectionNotFoundResponse.item1}"); // null
  print("Meta: ${collectionNotFoundResponse.item2}"); // null
  print("\n----------------------------------------------------\n");

  final collectionSingleResponse = await client.collection.getOne(collection, 1);
  print("Collection Single Response: $collectionSingleResponse");
  print("Data: ${collectionSingleResponse.item1}");
  print("Meta: ${collectionSingleResponse.item2}");
  print("\n----------------------------------------------------\n");

  final collectionSingleNotFoundResponse = await client.collection.getOne("xaxaxa", 1);
  print("Collection Single Not Found Response: $collectionSingleNotFoundResponse"); // [null, null]
  print("Data: ${collectionSingleNotFoundResponse.item1}"); // null
  print("Meta: ${collectionSingleNotFoundResponse.item2}"); // null
  print("\n----------------------------------------------------\n");

  final resourceSingle = await client.resource.get(single);
  print("Resource Single Response: $resourceSingle"); // Response<Data.single>
  print("\n----------------------------------------------------\n");

  final resourceCollection = await client.resource.get(collection);
  print("Resource Collection Response: $resourceCollection"); // Response<Data.collection>
  print("\n----------------------------------------------------\n");

  final resourceCollectionSingle = await client.resource.get("$collection/1");
  print("Resource Collection Single Response: $resourceCollectionSingle"); // Response<Data.single>
  print("\n----------------------------------------------------\n");

  final resourceNoExists = await client.resource.get("lalala");
  print("Resource Not Found Response: $resourceNoExists"); // Response.error
  print("\n----------------------------------------------------\n");
}

```

## Output
```
Single Response: [{id: 1, attributes: {...}}, Meta(pagination: null)]
Data: {id: 1, attributes: {...}}
Meta: Meta(pagination: null)

----------------------------------------------------

Single Not Found Response: [null, null]
Data: null
Meta: null

----------------------------------------------------

Collection Response: [[{id: 1, attributes: {...}}, {id: 2, attributes: {...}}], Meta(pagination: Pagination(page: 1, pageSize: 25, pageCount: 1, total: 2))]
Data: [{id: 1, attributes: {...}}, {id: 2, attributes: {...}}]
Meta: Meta(pagination: Pagination(page: 1, pageSize: 25, pageCount: 1, total: 2))

----------------------------------------------------

Collection Not Found Response: [null, null]
Data: null
Meta: null

----------------------------------------------------

Collection Single Response: [{id: 1, attributes: {...}}, Meta(pagination: null)]
Data: {id: 1, attributes: {...}}
Meta: Meta(pagination: null)

----------------------------------------------------

Collection Single Not Found Response: [null, null]
Data: null
Meta: null

----------------------------------------------------

Resource Single Response: Response(data: Data.single(data: {id: 1, attributes: {...}}), meta: Meta(pagination: null))

----------------------------------------------------

Resource Collection Response: Response(data: Data.collection(data: [{id: 1, attributes: {...}}, {id: 2, attributes: {...}}]), meta: Meta(pagination: Pagination(page: 1, pageSize: 25, pageCount: 1, total: 2)))

----------------------------------------------------

Resource Collection Single Response: Response(data: Data.single(data: {id: 1, attributes: {...}}), meta: Meta(pagination: null))

----------------------------------------------------

Resource Not Found Response: Response.error(message: ...)

----------------------------------------------------

```

> This package is in active development process, there are implemented methods to query, if you need create / update / delete or call other api you can use `client.httpClient` to call [Dio](https://pub.dev/packages/dio) client directly. 

Check [Examples](./example/dart_strapi_example.dart) for more
