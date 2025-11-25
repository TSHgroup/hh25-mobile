import 'package:flutter_svg/flutter_svg.dart';
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
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(18.sp),
                child: SvgPicture.string(
                  width: 22.sp,
                  height: 22.sp,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  '<svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"></path></svg>',
                ),
              ),
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
