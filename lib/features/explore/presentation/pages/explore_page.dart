import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/home/handle_page_change.dart';
import 'package:odpalgadke/features/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:odpalgadke/features/scenario/data/data_sources/scenario_data_source.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:odpalgadke/features/scenario/presentation/widgets/scenario_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int page = 1;
  int pages = 1;

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
          index: 1,
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 1.5.h),
              child: Center(
                child: Pagination(
                  showLabel: false,
                  showSkipToLastPage: true,
                  gap: 0,
                  page: page,
                  totalPages: pages,
                  onPageChanged: (value) {
                    setState(() {
                      page = value;
                    });
                  },
                  maxPages: 1,
                ),
              ),
            ),

            FutureBuilder(
              future: get<ScenarioDataSource>().fetchScenarios(page),
              builder: (context, snapshot) {
                if (snapshot.data != null) {
                  return snapshot.data!.fold(
                    (exception) {
                      return Text(exception.toString());
                    },
                    (data) {
                      pages = data['lastPage'];

                      return Column(
                        children: [
                          ...(data['result'].map(
                            (dynamic) => ScenarioModel.fromJson(dynamic),
                          )).map(
                            (scenario) => Container(
                              width: 92.w,
                              margin: EdgeInsets.symmetric(vertical: 1.h),
                              child: ScenarioCard(scenario: scenario),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }

                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
