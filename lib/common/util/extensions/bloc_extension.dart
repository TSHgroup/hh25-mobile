import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocExtension<E, S> on Bloc<E, S> {
  Future<T?> addAndWait<T extends S>(
      E event, {
        Duration timeout = const Duration(minutes: 1),
      }) async {
    final completer = Completer<T?>();
    late final StreamSubscription<S> subscription;

    subscription = stream.listen((state) {
      if (state is T && !completer.isCompleted) {
        completer.complete(state);
      }
    });

    add(event);

    try {
      return await completer.future.timeout(timeout);
    } on TimeoutException {
      return null;
    } finally {
      await subscription.cancel();
    }
  }
}

extension BlocReset on Bloc {
  void reset(dynamic initialState) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(initialState);
  }
}
