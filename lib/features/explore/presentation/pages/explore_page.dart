import 'package:odpalgadke/features/home/handle_page_change.dart';
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
              badge: AvatarBadge(size: 14.sp, color: Colors.green),
            ),
          ],
          trailing: [const Icon(Icons.search)],
        ),
      ],
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
                  totalPages: 100,
                  onPageChanged: (value) {
                    setState(() {
                      page = value;
                    });
                  },
                  maxPages: 1,
                ),
              ),
            ),

            SizedBox(
              width: 92.w,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  child: ScenarioCard(),
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
