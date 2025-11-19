import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/common/router/go_router.dart';
import 'package:odpalgadke/features/auth/presentation/blocs/current_user_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

const centralUrl = "https://odpalgadke.q1000q.cc/api/v1/";

class OdpalGadke extends StatelessWidget {
  const OdpalGadke({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, _, _) {
        return MultiBlocProvider(
          providers: [BlocProvider<CurrentUserBloc>(create: (_) => get())],
          child: ShadcnApp.router(
            title: 'OdpalGadke',
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: ThemeData(colorScheme: ColorSchemes.lightBlue, radius: 0.5),
          ),
        );
      },
    );
  }
}
