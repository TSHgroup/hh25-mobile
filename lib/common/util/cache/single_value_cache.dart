class SingleValueCache<T> {
  T? _value;

  bool get hasValue => _value != null;

  void set(T value) {
    _value = value;
  }

  T? get() {
    return _value;
  }

  void clear() {
    _value = null;
  }
}
