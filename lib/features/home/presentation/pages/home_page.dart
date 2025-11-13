import 'package:intl/intl.dart';
import 'package:odpalgadke/features/home/handle_page_change.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          index: 0,
          children: [
            buildButton('Home', BootstrapIcons.house),
            buildButton('Explore', BootstrapIcons.compass),
            buildButton('Library', LucideIcons.library),
            buildButton('Profile', BootstrapIcons.person),
          ],
        ),
      ],
      showLoadingSparks: true,
      headers: [
        AppBar(
          title: const Text('OdpalGadkę'),
          subtitle: const Text('Witaj, ThisKarolGajda'),
          leading: [
            Avatar(
              backgroundColor: Colors.red,
              initials: Avatar.getInitials('sunarya-thito'),
              provider: const NetworkImage(
                'https://avatars.githubusercontent.com/u/64018564?v=4',
              ),
              badge: AvatarBadge(
                size: 14.sp,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 92.w,
              margin: EdgeInsets.symmetric(vertical: 1.5.h),
              child: NumberTicker(
                duration: Duration(seconds: 3),
                curve: Curves.easeInOutQuint,
                initialNumber: 0,
                number: 30,
                style: const TextStyle(fontSize: 32),
                formatter: (number) {
                  return NumberFormat.compact().format(number);
                },
              ),
            ),
            Container(
              width: 92.w,
              margin: EdgeInsets.symmetric(vertical: 1.5.h),
              child: Card(
                padding: EdgeInsets.all(18.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Create project').semiBold(),
                    const SizedBox(height: 4),
                    const Text(
                      'Deploy your new project in one-click',
                    ).muted().small(),
                    const SizedBox(height: 24),
                    const Text('Name').semiBold().small(),
                    const SizedBox(height: 4),
                    const TextField(placeholder: Text('Name of your project')),
                    const SizedBox(height: 16),
                    const Text('Description').semiBold().small(),
                    const SizedBox(height: 4),
                    const TextField(
                      placeholder: Text('Description of your project'),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        OutlineButton(
                          child: const Text('Cancel'),
                          onPressed: () {},
                        ),
                        const Spacer(),
                        PrimaryButton(
                          child: const Text('Deploy'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ).intrinsic(),
            ),
          ],
        ),
      ),
    );
  }
}
