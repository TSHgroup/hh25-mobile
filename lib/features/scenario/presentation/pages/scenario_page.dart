import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioPage extends StatelessWidget {
  const ScenarioPage({super.key});

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
      showLoadingSparks: true,
      headers: [
        AppBar(
          title: const Text('Scenariusz'),
          leading: [
            OutlineButton(
              onPressed: () => context.pop(),
              density: ButtonDensity.icon,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ],
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
