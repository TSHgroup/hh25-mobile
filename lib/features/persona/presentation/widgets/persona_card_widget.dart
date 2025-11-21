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
            Text(persona.name).h1,

            const SizedBox(height: 8),

            // Role
            Text("Role", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(persona.role),

            const SizedBox(height: 12),

            // Personality
            Text("Personality", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(persona.personality),

            const SizedBox(height: 12),

            // Voice
            Text("Voice", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(persona.voice),

            const SizedBox(height: 12),

            // Informations
            Text("Informations", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(persona.informations),

            const SizedBox(height: 12),

            // Emotion Model
            Text("Emotion Model", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Baseline: ${persona.emotionModel.baseline}"),
            Text("Adaptive: ${persona.emotionModel.adapt ? 'Yes' : 'No'}"),

            const SizedBox(height: 12),

            // Max tokens
            Text(
              "Max Response Tokens",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(persona.maxResponseTokens.toString()),

            const SizedBox(height: 12),

            // Public?
            Text("Visibility", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(persona.public ? "Public" : "Private"),

            const SizedBox(height: 12),

            // Created by
            Text("Created by", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(persona.createdBy),
          ],
        ),
      ),
    );
  }
}
