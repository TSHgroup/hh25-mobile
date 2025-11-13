import 'package:odpalgadke/common/router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class OdpalGadke extends StatelessWidget {
  const OdpalGadke({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, _, _) {
        return ShadcnApp.router(
          title: 'OdpalGadke',
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: ThemeData(colorScheme: ColorSchemes.darkGreen, radius: 0.5),
        );
      },
    );
  }
}
