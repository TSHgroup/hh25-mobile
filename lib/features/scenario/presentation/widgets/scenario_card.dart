import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioCard extends StatelessWidget {
  const ScenarioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      padding: EdgeInsets.all(18.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryBadge(child: const Text("Biznes")),
              SecondaryBadge(child: const Text("Published")),
            ],
          ),
          SizedBox(height: 2.h),

          const Text("Rozmowa o podwyżce").bold.x2Large,
          const Text("Ćwicz negocjacje wynagrodzenia z menadżerem IT").normal.light,
          SizedBox(height: 2.h),

          const Text(
            "W tym scenariuszu wcielasz się w pracownika, który chce omówić "
            "możliwość podwyżki z przełożonym. Celem jest utrzymanie "
            "spokoju, logiczne argumentowanie i reagowanie na emocje rozmówcy.",
          ).small.blockQuote,
          SizedBox(height: 2.h),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 1.5.h),
            child: Divider(),
          ),

          Row(
            spacing: 10.sp,
            children: [
              Icon(BootstrapIcons.personBoundingBox),
              const Text('Menadźer IT').semiBold,
            ],
          ),
          SizedBox(height: 1.h),

          Wrap(
            spacing: 10.sp,
            runSpacing: 8.sp,
            children: [
              OutlineBadge(child: Text('Spokojny, wymagający').normal),
              OutlineBadge(child: Text('Styl: realistyczny').normal),
              OutlineBadge(child: Text('Ton: neutralny').normal),
              OutlineBadge(child: Text('Empatyczny').normal),
            ],
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 1.5.h),
            child: Divider(),
          ),

          const Text("Cele rozmowy:").semiBold,
          SizedBox(height: 0.5.h),
          const Text("Utrzymać spokój").xSmall.li,
          const Text("Mówić logicznie").xSmall.li,
          const Text("Przekonać do podwyżki").xSmall.li,
          SizedBox(height: 2.h),

          Column(
            spacing: 8.sp,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Button(
                    onPressed: () {
                      context.push('/scenario');
                    },
                    style: ButtonVariance.primary,
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
              Text('Symulacja potrwa ok. 5 minut').xSmall,
            ],
          ),
        ],
      ),
    );
  }
}
