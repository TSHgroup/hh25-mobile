import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/persona/data/data_sources/persona_data_source.dart';
import 'package:odpalgadke/features/persona/presentation/widgets/persona_card_widget.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioCard extends StatefulWidget {
  final ScenarioModel scenario;

  const ScenarioCard({super.key, required this.scenario});

  @override
  State<ScenarioCard> createState() => _ScenarioCardState();
}

class _ScenarioCardState extends State<ScenarioCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      padding: EdgeInsets.all(18.sp),
      child: FutureBuilder(
        future: get<PersonaDataSource>().fetchPersona(widget.scenario.persona),
        builder: (context, snapshot) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [PrimaryBadge(child: Text(widget.scenario.category))],
              ),
              SizedBox(height: 2.h),

              Text(widget.scenario.title).bold.x2Large,
              Text(widget.scenario.subtitle).normal.light,
              SizedBox(height: 2.h),

              Text(widget.scenario.description, maxLines: 6).small.blockQuote,

              Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 1.5.h),
                child: Divider(),
              ),

              if (snapshot.data != null)
                PersonaCardWidget(persona: snapshot.data!),

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
                  ...widget.scenario.objectives.toList().map(
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
                        onPressed: snapshot.data != null
                            ? () => context.push(
                                '/scenario',
                                extra: widget.scenario,
                              )
                            : null,
                        style: ButtonVariance.primary,
                        child: Row(
                          spacing: 12.sp,
                          children: [
                            Icon(LucideIcons.info),
                            Text(
                              snapshot.data != null
                                  ? "Dowiedz się więcej"
                                  : "Wczytywanie persony",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
