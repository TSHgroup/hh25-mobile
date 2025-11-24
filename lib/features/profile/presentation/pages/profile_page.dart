import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:odpalgadke/features/home/handle_page_change.dart';
import 'package:odpalgadke/features/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  NavigationItem buildButton(String label, IconData icon) {
    return NavigationItem(
      style: const ButtonStyle.muted(density: ButtonDensity.icon),
      selectedStyle: const ButtonStyle.fixed(density: ButtonDensity.icon),
      label: Text(label),
      child: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      footers: [
        NavigationBar(
          alignment: NavigationBarAlignment.center,
          labelType: NavigationLabelType.all,
          expanded: true,
          expands: true,
          onSelected: (index) => handlePageChange(index),
          index: 3,
          children: [
            buildButton('Home', BootstrapIcons.house),
            buildButton('Explore', BootstrapIcons.compass),
            buildButton('Library', LucideIcons.library),
            buildButton('Profile', BootstrapIcons.person),
          ],
        ),
      ],
      showLoadingSparks: true,
      headers: [HomeAppBarWidget()],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondaryButton(
              child: const Text('Wyloguj się'),
              onPressed: () async {
                await get<AuthSecureStorage>().clearTokens();
                if (context.mounted) {
                  context.replace('/auth');
                }
              },
            ),

            // SizedBox(
            //   width: 92.w,
            //   child: Accordion(
            //     items: [
            //       AccordionItem(
            //         trigger: AccordionTrigger(child: Text('Username')),
            //         content: TextField(),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   width: 92.w,
            //   child: Form(
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //       children: [
            //         FormField(
            //           key: _usernameKey,
            //           label: const Text('Username'),
            //           hint: const Text('This is your public display name'),
            //           validator: const LengthValidator(min: 4),
            //           showErrors: const {
            //             FormValidationMode.changed,
            //             FormValidationMode.submitted,
            //           },
            //           child: TextField(
            //             initialValue: currentUser!.profile.displayName,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
