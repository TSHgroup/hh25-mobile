import 'package:odpalgadke/features/home/handle_page_change.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
          trailing: [
            OutlineButton(
              onPressed: () {},
              density: ButtonDensity.icon,
              child: const Icon(Icons.search),
            ),
          ],
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Profile').p],
        ),
      ),
    );
  }
}
