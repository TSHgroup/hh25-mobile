import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odpalgadke/common/app/odpalgadke.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const OdpalGadke());
}
