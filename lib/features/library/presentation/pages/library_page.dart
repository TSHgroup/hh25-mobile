import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/home/handle_page_change.dart';
import 'package:odpalgadke/features/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:odpalgadke/features/persona/data/data_sources/persona_data_source.dart';
import 'package:odpalgadke/features/persona/data/models/persona_model.dart';
import 'package:odpalgadke/features/persona/presentation/widgets/persona_card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

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
          index: 2,
          children: [
            buildButton('Główna', BootstrapIcons.house),
            buildButton('Odkryj', BootstrapIcons.compass),
            buildButton('Persony', LucideIcons.library),
            buildButton('Profil', BootstrapIcons.person),
          ],
        ),
      ],
      showLoadingSparks: true,
      headers: [HomeAppBarWidget()],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: get<PersonaDataSource>().fetchPersonas(1),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return CircularProgressIndicator();
                }

                return snapshot.data!.fold(
                  (exception) {
                    return Text(exception.toString());
                  },
                  (data) {
                    return Column(
                      children: (data['result'] as List<dynamic>)
                          .map((dynamic) => PersonaModel.fromJson(dynamic))
                          .map((persona) => PersonaCardWidget(persona: persona))
                          .toList(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
