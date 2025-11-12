import 'package:flutter/material.dart';
import 'package:odpalgadke/common/util/either/either_util.dart';

class FutureEitherBuilder<L> extends StatelessWidget {
  final Future<L?> future;
  final Widget Function(L) builder;
  final Widget? loading;
  final Widget? error;

  const FutureEitherBuilder({
    super.key,
    required this.future,
    required this.builder,
    this.loading,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fe(future),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return loading ?? CircularProgressIndicator();
        }

        if (snapshot.data!.isRight) {
          return (error) ?? Text(snapshot.data!.right.toString());
        }

        L l = snapshot.data!.left;
        return builder.call(l);
      },
    );
  }
}
