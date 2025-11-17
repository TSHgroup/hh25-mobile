import 'package:dio/dio.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';

class ScenarioDataSource {
  final Dio _dio;

  ScenarioDataSource(this._dio);

  Future<List<ScenarioModel>> fetchScenarios() async {
    final user = UserModel(
      id: "user_001",
      name: "Jan Kowalski",
      email: "jan.kowalski@example.com",
      role: "trainer",
    );

    final metadata = Metadata(
      platformVersion: "1.4.2",
      engine: "gpt-5",
      audioFormat: "mp3",
      maxRounds: 5,
      minVersionRequired: "1.2.0",
      tagsSearchable: true,
    );

    return [
      // 1️⃣ Biznes — rozmowa o podwyżce
      ScenarioModel(
        id: "scn_001",
        title: "Rozmowa o podwyżce",
        subtitle: "Ćwicz negocjacje wynagrodzenia z menadżerem IT",
        description:
            "W tym scenariuszu wcielasz się w pracownika, który omawia możliwość podwyżki ze swoim przełożonym.",
        category: "biznes",
        tags: ["negocjacje", "komunikacja", "IT"],
        language: "pl",
        status: "published",
        visibility: "public",
        createdBy: user,
        createdAt: DateTime.parse("2025-11-10T12:00:00Z"),
        updatedAt: DateTime.now(),
        objectives: [
          "Utrzymać spokój",
          "Mówić logicznie",
          "Przekonać do podwyżki",
        ],
        aiPersona: AiPersona(
          name: "Andrzej",
          role: "Menadżer IT",
          personality: "spokojny, wymagający",
          voiceProfile: "male_calm",
          responseStyle: "realistic",
          emotionModel: EmotionModel(
            baseline: "neutral",
            adaptToUserEmotion: true,
          ),
          maxResponseLength: 400,
        ),
        openingPrompt:
            "Dzień dobry, chciałem chwilę porozmawiać o moim wynagrodzeniu, jeśli mogę.",
        closingPrompt:
            "Dziękuję za rozmowę, przemyślę to i wrócę do ciebie z decyzją.",
        metadata: metadata,
        structure: [
          Round(
            id: "r1",
            aiPrompt:
                "Cześć, pewnie, możemy o tym porozmawiać. Co sprawiło, że chciałeś poruszyć ten temat?",
            expectedResponseType: "argument",
            aiEmotion: "friendly",
            userEmotionTarget: "calm",
            tips: ["Wskaż konkretne osiągnięcia", "Zachowaj spokojny ton"],
            keywordsRequired: ["projekt", "osiągnięcie"],
          ),
          Round(
            id: "r2",
            aiPrompt:
                "Rozumiem. A jak oceniasz swój wpływ na ostatnie projekty zespołu?",
            expectedResponseType: "uzasadnienie",
            aiEmotion: "neutral",
            userEmotionTarget: "confident",
          ),
        ],
      ),

      // 2️⃣ Szkoła — prezentacja przed klasą
      ScenarioModel(
        id: "scn_002",
        title: "Prezentacja przed klasą",
        subtitle: "Pokonaj tremę i zaprezentuj projekt z pewnością siebie",
        description:
            "Wcielasz się w ucznia, który przedstawia projekt przed klasą i nauczycielem. Celem jest opanowanie stresu i jasne komunikowanie myśli.",
        category: "szkoła",
        tags: ["public speaking", "pewność siebie", "stres"],
        language: "pl",
        status: "published",
        visibility: "public",
        createdBy: user,
        createdAt: DateTime.parse("2025-11-11T09:00:00Z"),
        objectives: [
          "Mówić wyraźnie",
          "Kontrolować stres",
          "Utrzymać kontakt wzrokowy",
        ],
        aiPersona: AiPersona(
          name: "Pani Anna",
          role: "Nauczycielka języka polskiego",
          personality: "życzliwa, wspierająca",
          voiceProfile: "female_warm",
          responseStyle: "empathetic",
          emotionModel: EmotionModel(
            baseline: "friendly",
            adaptToUserEmotion: true,
          ),
          maxResponseLength: 300,
        ),
        openingPrompt:
            "Dzień dobry, dziś chciałbym przedstawić mój projekt o literaturze fantasy.",
        metadata: metadata,
        structure: [
          Round(
            id: "r1",
            aiPrompt:
                "Świetnie, zaczynaj! O czym dokładnie będzie Twoja prezentacja?",
            expectedResponseType: "opinia",
            aiEmotion: "friendly",
            userEmotionTarget: "confident",
          ),
        ],
      ),

      // 3️⃣ Rodzina — rozwiązywanie konfliktu
      ScenarioModel(
        id: "scn_003",
        title: "Rozwiązywanie konfliktu w rodzinie",
        subtitle: "Naucz się spokojnie komunikować swoje emocje i potrzeby",
        description:
            "Scenariusz pomoże Ci przećwiczyć rozmowę z bliską osobą w sytuacji napięcia emocjonalnego.",
        category: "rodzina",
        tags: ["komunikacja", "emocje", "empatia"],
        language: "pl",
        status: "editing",
        visibility: "private",
        createdBy: user,
        createdAt: DateTime.parse("2025-11-12T15:30:00Z"),
        objectives: ["Zachować spokój", "Okazać empatię", "Nie oceniać"],
        aiPersona: AiPersona(
          name: "Ewa",
          role: "Członek rodziny",
          personality: "emocjonalna, szczera",
          voiceProfile: "female_neutral",
          responseStyle: "realistic",
          emotionModel: EmotionModel(
            baseline: "defensive",
            adaptToUserEmotion: true,
          ),
          maxResponseLength: 350,
        ),
        openingPrompt:
            "Chciałbym porozmawiać o tym, co się ostatnio wydarzyło między nami.",
        closingPrompt:
            "Dziękuję, że mnie wysłuchałaś. Cieszę się, że mogliśmy to omówić.",
        metadata: metadata,
        structure: [
          Round(
            id: "r1",
            aiPrompt: "Nie rozumiem, dlaczego znowu zaczynasz ten temat...",
            expectedResponseType: "emocja",
            aiEmotion: "defensive",
            userEmotionTarget: "empathetic",
            tips: ["Nie oceniaj", "Okaż zrozumienie"],
            forbiddenKeywords: ["zawsze", "nigdy"],
          ),
        ],
      ),
      ScenarioModel(
        id: "scn_004",
        title: "Pierwsza randka",
        subtitle:
            "Przećwicz swobodną, lekką rozmowę podczas pierwszego spotkania",
        description:
            "W tym scenariuszu wcielasz się w osobę, która jest na pierwszej randce w kawiarni. Celem jest naturalna rozmowa, zadawanie pytań i budowanie pozytywnej atmosfery.",
        category: "relacje",
        tags: ["randka", "komunikacja", "small talk"],
        language: "pl",
        status: "published",
        visibility: "public",
        createdBy: user,
        createdAt: DateTime.parse("2025-11-13T18:30:00Z"),
        updatedAt: DateTime.now(),
        objectives: [
          "Prowadzić lekką, naturalną rozmowę",
          "Okazywać zainteresowanie",
          "Budować komfort i pozytywną atmosferę",
        ],
        aiPersona: AiPersona(
          name: "Marta",
          role: "Osoba na randce",
          personality: "ciepła, ciekawa świata, lekko nieśmiała",
          voiceProfile: "female_warm",
          responseStyle: "empathetic",
          emotionModel: EmotionModel(
            baseline: "friendly",
            adaptToUserEmotion: true,
          ),
          maxResponseLength: 300,
        ),
        openingPrompt:
            "Cześć! Miło cię w końcu poznać na żywo. Mam nadzieję, że dobrze tu trafiłeś?",
        closingPrompt:
            "Dziękuję za miły wieczór, naprawdę dobrze mi się z tobą rozmawiało.",
        metadata: metadata,
        structure: [
          Round(
            id: "r1",
            aiPrompt:
                "Powiedz, jak ci minął dzień? Wyglądasz na trochę podekscytowanego.",
            expectedResponseType: "opis",
            aiEmotion: "friendly",
            userEmotionTarget: "relaxed",
            tips: [
              "Podziel się czymś lekkim i pozytywnym",
              "Unikaj narzekania",
            ],
          ),
          Round(
            id: "r2",
            aiPrompt:
                "Jestem ciekawa — co zwykle robisz po pracy, żeby się odprężyć?",
            expectedResponseType: "opinia",
            aiEmotion: "curious",
            userEmotionTarget: "open",
            tips: ["Możesz wspomnieć o hobby", "Unikaj zbyt intymnych tematów"],
          ),
          Round(
            id: "r3",
            aiPrompt:
                "Brzmi super. A czego najbardziej szukasz w relacji lub poznawaniu nowych osób?",
            expectedResponseType: "refleksja",
            aiEmotion: "warm",
            userEmotionTarget: "honest",
          ),
        ],
      ),
    ];
  }
}
