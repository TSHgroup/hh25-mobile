import 'package:odpalgadke/features/persona/data/models/persona_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PersonaCardWidget extends StatelessWidget {
  final PersonaModel persona;

  const PersonaCardWidget({super.key, required this.persona});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 92.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(persona.name).xLarge.bold,
            const SizedBox(height: 6),

            Text("Role").bold.small,
            Text(persona.role).small,

            const SizedBox(height: 12),

            Text("Personality").bold.small,
            Text(persona.personality).small,

            const SizedBox(height: 12),

            Text("Voice").bold.small,
            Text(persona.voice).small,
          ],
        ),
      ),
    );
  }
}
