import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:odpalgadke/features/auth/data/data_sources/auth_data_source.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthLoginPage extends StatefulWidget {
  const AuthLoginPage({super.key});

  @override
  State<AuthLoginPage> createState() => _AuthLoginPageState();
}

class _AuthLoginPageState extends State<AuthLoginPage> {
  final _emailKey = const TextFieldKey(#username);
  final _passwordKey = const TextFieldKey(#password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          title: const Text('Logowanie'),
          leading: [
            OutlineButton(
              onPressed: () => context.pop(),
              density: ButtonDensity.icon,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ],
        ),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 92.w,
                child: Form(
                  onSubmit: (context, values) async {
                    String? email = _emailKey[values];
                    String? password = _passwordKey[values];

                    if (email != null && password != null) {
                      final response = get<AuthDataSource>().login(
                        email,
                        password,
                      );

                      (await response).fold(
                        (exception) {
                          showToast(
                            context: context,
                            builder: (context, overlay) {
                              return SurfaceCard(
                                child: Basic(
                                  leading: Icon(LucideIcons.triangleAlert),
                                  title: const Text('Coś poszło nie tak!'),
                                  subtitle: Text(
                                    '${exception['error']}',
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        (data) async {
                          final accessToken = data['accessToken'];
                          final refreshToken = data['refreshToken'];

                          await get<AuthSecureStorage>().saveAccessToken(
                            accessToken,
                          );
                          await get<AuthSecureStorage>().saveRefreshToken(
                            refreshToken,
                          );

                          if (context.mounted) {
                            context.push('/auth/token');
                          }
                        },
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FormField(
                            key: _emailKey,
                            label: const Text('Email'),
                            hint: const Text(
                              'Będzie on używany do dostępu do serwisu',
                            ),
                            validator: const EmailValidator(
                              message: "Nieprawidłowy email",
                            ),
                            showErrors: const {
                              FormValidationMode.changed,
                              FormValidationMode.submitted,
                            },
                            child: const TextField(),
                          ),
                          FormField(
                            key: _passwordKey,
                            label: const Text('Hasło'),
                            validator:
                                LengthValidator(
                                      min: 8,
                                      message:
                                          "Hasło musi mieć co najmniej 8 znaków",
                                    )
                                    .combine(
                                      RegexValidator(
                                        RegExp(r'[A-Z]'),
                                        message:
                                            "Hasło musi zawierać co najmniej jedną wielką literę",
                                      ),
                                    )
                                    .combine(
                                      RegexValidator(
                                        RegExp(r'[a-z]'),
                                        message:
                                            "Hasło musi zawierać co najmniej jedną małą literę",
                                      ),
                                    )
                                    .combine(
                                      RegexValidator(
                                        RegExp(r'[0-9]'),
                                        message:
                                            "Hasło musi zawierać co najmniej jedną cyfrę",
                                      ),
                                    )
                                    .combine(
                                      RegexValidator(
                                        RegExp(r'[^A-Za-z0-9]'),
                                        message:
                                            "Hasło musi zawierać co najmniej jeden znak specjalny",
                                      ),
                                    ),
                            showErrors: const {
                              FormValidationMode.changed,
                              FormValidationMode.submitted,
                            },
                            child: const TextField(
                              obscureText: true,
                              features: [
                                InputFeature.passwordToggle(
                                  mode: PasswordPeekMode.toggle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).gap(24),
                      const Gap(24),
                      FormErrorBuilder(
                        builder: (context, errors, child) {
                          return PrimaryButton(
                            onPressed: errors.isEmpty
                                ? () => context.submitForm()
                                : null,
                            child: const Text('Zaloguj się'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
