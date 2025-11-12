import 'package:flutter/material.dart';
import 'package:odpalgadke/common/router/go_router.dart';
import 'package:odpalgadke/common/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OdpalGadke extends StatelessWidget {
  const OdpalGadke({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, _, _) {
        return MaterialApp.router(
          title: 'OdpalGadke',
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.light,
          routerConfig: router,
        );
      },
    );
  }
}
