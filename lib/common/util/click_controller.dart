class ClickController {
  bool _isProcessing = false;

  Future<void> executeOnce(Future<void> Function() action) async {
    if (_isProcessing) {
      return;
    }

    _isProcessing = true;
    try {
      await action();
    } finally {
      _isProcessing = false;
    }
  }
}
