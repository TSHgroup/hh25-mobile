import 'package:go_router/go_router.dart';
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

          Text(scenario.description).small.blockQuote,

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 1.5.h),
            child: Divider(),
          ),

          Row(
            spacing: 10.sp,
            children: [
              Icon(BootstrapIcons.personBoundingBox),
              Text(scenario.persona).semiBold,
            ],
          ),
          SizedBox(height: 1.h),

          Wrap(
            spacing: 10.sp,
            runSpacing: 8.sp,
            children: [
              // if (scenario.aiPersona.personality != null)
              //   ...scenario.aiPersona.personality!.split(', ').map((
              //       personality) =>
              //       OutlineBadge(
              //         child: Text(personality).normal,
              //       ),),
              // OutlineBadge(
              //     child: Text('Styl: ${scenario.aiPersona.responseStyle}')
              //         .normal),
              // OutlineBadge(child: Text(
              //     'Ton: ${scenario.aiPersona.emotionModel.baseline}').normal),
            ],
          ),

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
