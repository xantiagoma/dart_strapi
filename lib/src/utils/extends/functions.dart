import 'dart:async';

T tryOrNull<T>(T Function() callback) {
  try {
    return callback();
  } catch (_) {
    return null;
  }
}

Future<T> tryOrNullAsync<T>(FutureOr<T> Function() callback) async {
  try {
    return await callback();
  } catch (e) {
    print(e);
    return null;
  }
}
