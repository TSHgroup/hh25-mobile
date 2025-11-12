import 'dart:async';

class Cache<T> {
  final Map<int, T> _cache = {};
  final Map<int, Completer<void>> _awaiting = {};
  final Map<int, Timer> _expiryTimers = {};
  final Duration expiryDuration;

  Cache({
    this.expiryDuration = const Duration(minutes: 15),
  });

  void set(int id, T item) {
    _cache[id] = item;
    _awaiting[id]?.complete();
    _awaiting.remove(id);

    _expiryTimers[id]?.cancel();

    _expiryTimers[id] = Timer(expiryDuration, () {
      _cache.remove(id);
      _expiryTimers.remove(id);
    });
  }

  T? get(int id) {
    return _cache[id];
  }

  void setWaiting(int id) {
    _awaiting[id] = Completer<void>();
  }

  bool isWaiting(int id) {
    return _awaiting.containsKey(id);
  }

  Future<void> waitForCompletion(int id) async {
    if (_awaiting[id]?.isCompleted == false) {
      await _awaiting[id]?.future;
    }
  }

  void removeWaiting(int id) {
    _awaiting[id]?.complete();
    _awaiting.remove(id);
  }

  void remove(int id) {
    _cache.remove(id);
    _expiryTimers[id]?.cancel();
    _expiryTimers.remove(id);
    _awaiting.remove(id);
  }

  void clear() {
    _cache.clear();
    for (var timer in _expiryTimers.values) {
      timer.cancel();
    }
    _expiryTimers.clear();
    _awaiting.clear();
  }
}
