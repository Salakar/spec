import 'package:collection/collection.dart';
import 'package:riverpod/riverpod.dart';

extension IterableExt<T> on Iterable<T> {
  R? firstWhereTypeOrNull<R>() {
    return firstWhereOrNull((element) => element is R) as R?;
  }

  T? get firstOrNull {
    if (isEmpty) return null;
    return first;
  }

  AsyncValue<T> get firstDataOrLoading {
    if (isEmpty) return AsyncLoading();
    return AsyncData(first);
  }
}
