import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    get<AuthSecureStorage>().getRefreshToken().then((refreshToken) {
      setState(() => _loading = false);
      if (mounted && refreshToken != null) {
        context.push('/auth/token');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: SafeArea(
        child: Visibility(
          visible: !_loading,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 42.sp),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Witaj w ').h4,
                  Text(
                    'OdpalGadke',
                    style: TextStyle(color: ColorSchemes.lightBlue.primary),
                  ).h4,
                ],
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: 84.w,
                child: PrimaryButton(
                  onPressed: () {
                    context.push('/auth/login');
                  },
                  child: const Text('Zaloguj się'),
                ),
              ),
              SizedBox(height: 1.h),
              SizedBox(
                width: 84.w,
                child: SecondaryButton(
                  onPressed: () {
                    context.push('/auth/register');
                  },
                  child: const Text('Zarejestruj się'),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
