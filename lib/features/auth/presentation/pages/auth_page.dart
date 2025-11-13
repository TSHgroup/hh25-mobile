import 'package:odpalgadke/features/home/handle_page_change.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

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
          title: const Text('OdpalGadke'),
          leading: [
            OutlineButton(
              onPressed: () {},
              density: ButtonDensity.icon,
              child: const Icon(Icons.menu),
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
          children: [
            Image.network('https://picsum.photos/200/300'),
            Image.network('https://picsum.photos/300/400'),
            Image.network('https://picsum.photos/400/500'),
            Image.network('https://picsum.photos/500/200'),
          ],
        ),
      ),
    );
  }
}
