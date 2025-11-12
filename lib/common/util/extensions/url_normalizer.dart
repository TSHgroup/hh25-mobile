extension UrlNormalizer on String {
  String normalizeUrl() {
    return replaceAllMapped(RegExp(r'([^:/])/+'), (match) => '${match[1]}/');
  }
}
