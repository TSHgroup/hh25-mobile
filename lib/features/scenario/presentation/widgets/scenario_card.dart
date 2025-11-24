import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/persona/data/data_sources/persona_data_source.dart';
import 'package:odpalgadke/features/persona/presentation/widgets/persona_card_widget.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioCard extends StatelessWidget {
  final ScenarioModel scenario;

  const ScenarioCard({super.key, required this.scenario});

  @override
  Widget build(BuildContext context) {
    return Card(
      padding: EdgeInsets.all(18.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [PrimaryBadge(child: Text(scenario.category))],
          ),
          SizedBox(height: 2.h),

          Text(scenario.title).bold.x2Large,
          Text(scenario.subtitle).normal.light,
          SizedBox(height: 2.h),

          Text(scenario.description, maxLines: 6).small.blockQuote,

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 1.5.h),
            child: Divider(),
          ),

          FutureBuilder(
            future: get<PersonaDataSource>().fetchPersona(scenario.persona),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return CircularProgressIndicator();
              }

              return PersonaCardWidget(persona: snapshot.data!);
            },
          ),

          SizedBox(height: 1.h),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 1.5.h),
            child: Divider(),
          ),

          const Text("Cele rozmowy:").semiBold,
          SizedBox(height: 0.5.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...scenario.objectives.toList().map(
                    (objective) => Text(objective).xSmall.li,
              ),
            ],
          ),
          SizedBox(height: 2.h),

          Column(
            spacing: 8.sp,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Button(
                    onPressed: () => context.push('/scenario', extra: scenario),
                    style: ButtonVariance.primary,
                    child: Row(
                      spacing: 12.sp,
                      children: [
                        Icon(LucideIcons.info),
                        const Text("Dowiedz się więcej"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
