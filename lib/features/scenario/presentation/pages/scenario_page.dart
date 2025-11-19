import 'package:go_router/go_router.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioPage extends StatelessWidget {
  final ScenarioModel scenario;

  const ScenarioPage({super.key, required this.scenario});

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
          title: Text(scenario.title),
          leading: [
            OutlineButton(
              onPressed: () => context.pop(),
              density: ButtonDensity.icon,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ],
        ),
      ],
      child: SizedBox(
        width: 92.w,
        child: SingleChildScrollView(
          child: SizedBox(
            width: 92.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(scenario.subtitle).normal.light,
                SizedBox(height: 2.h),

                Text(scenario.description).small.blockQuote,
                SizedBox(height: 2.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      onPressed: () {},
                      child: Row(
                        spacing: 12.sp,
                        children: [
                          Icon(LucideIcons.gamepad2),
                          const Text("Zagraj scenariusz"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),

                const Text("Cele rozmowy:").semiBold,
                SizedBox(height: 0.5.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...scenario.objectives.map(
                      (objective) => Text("• $objective").xSmall,
                    ),
                  ],
                ),
                SizedBox(height: 3.h),

                /// TAGI
                const Text("Tagi:").semiBold,
                SizedBox(height: 0.7.h),
                Wrap(
                  spacing: 8.sp,
                  runSpacing: 8.sp,
                  children: scenario.tags
                      .map((tag) => OutlineBadge(child: Text(tag)))
                      .toList(),
                ),
                SizedBox(height: 3.h),

                /// KATEGORIA
                const Text("Kategoria:").semiBold,
                SizedBox(height: 0.7.h),
                Text(scenario.category).small,
                SizedBox(height: 3.h),

                /// JĘZYKI
                const Text("Dostępne języki:").semiBold,
                SizedBox(height: 0.7.h),
                Wrap(
                  spacing: 8.sp,
                  runSpacing: 8.sp,
                  children: scenario.languages
                      .map((lang) => SecondaryBadge(child: Text(lang)))
                      .toList(),
                ),
                SizedBox(height: 3.h),

                /// PERSONA
                const Text("Persona:").semiBold,
                SizedBox(height: 0.7.h),
                Text(scenario.persona).small,
                SizedBox(height: 3.h),

                /// AI MODEL
                const Text("Model AI:").semiBold,
                SizedBox(height: 0.7.h),
                Text("${scenario.ai.provider} — ${scenario.ai.model}").small,
                SizedBox(height: 3.h),

                /// STATUS
                const Text("Status:").semiBold,
                SizedBox(height: 0.7.h),
                Text(scenario.status).small,
                SizedBox(height: 3.h),

                /// METADATA
                const Text("Metadane:").semiBold,
                SizedBox(height: 0.7.h),
                Text("Utworzone przez: ${scenario.createdBy}").xSmall,
                Text("Utworzono: ${scenario.createdAt}").xSmall,
                Text("Ostatnia aktualizacja: ${scenario.lastUpdatedAt}").xSmall,
                SizedBox(height: 3.h),

                /// RUNDY
                if (scenario.rounds.isNotEmpty) ...[
                  const Text("Rundy scenariusza:").semiBold,
                  SizedBox(height: 0.5.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...scenario.rounds.asMap().entries.map(
                        (entry) => Text(
                          "Runda ${entry.key + 1}: ${entry.value}",
                        ).xSmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                ],

                /// BOTTOM SPACE
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
