import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/router/go_router.dart';

void handlePageChange(int page) {
  final context = navigatorKey.currentState!.context;

  context.replace(switch (page) {
    0 => "/home",
    1 => "/explore",
    2 => "/library",
    3 => "/profile",
    int() => throw UnimplementedError(),
  });
}
