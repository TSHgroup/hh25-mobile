import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:odpalgadke/features/auth/data/data_sources/auth_data_source.dart';
import 'package:odpalgadke/features/auth/presentation/blocs/current_user_bloc.dart';

class AuthTokenPage extends StatefulWidget {
  const AuthTokenPage({super.key});

  @override
  State<AuthTokenPage> createState() => _AuthTokenPageState();
}

class _AuthTokenPageState extends State<AuthTokenPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      String? refreshToken = await get<AuthSecureStorage>().getRefreshToken();

      if (refreshToken == null) {
        if (mounted) {
          context.replace('/auth');
        }

        return;
      }

      (await get<AuthDataSource>().refreshToken(refreshToken)).fold(
        (exception) {},
        (data) async {
          await get<AuthSecureStorage>().saveRefreshToken(data['refreshToken']);
          await get<AuthSecureStorage>().saveAccessToken(data['accessToken']);

          (await get<AuthDataSource>().fetchOwn()).fold((exception) {}, (user) {
            get<CurrentUserBloc>().add(CurrentUserSet(user));

            if (mounted) {
              context.push('/home');
            }
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
