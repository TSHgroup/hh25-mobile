import 'package:go_router/go_router.dart';
import 'package:odpalgadke/features/scenario/data/models/conversation_rating_model.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioResultsPage extends StatelessWidget {
  final ScenarioModel scenario;
  final ConversationRatingModel conversation;

  const ScenarioResultsPage({
    super.key,
    required this.scenario,
    required this.conversation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      headers: [
        AppBar(
          title: const Text('Wyniki konwersacji'),
          leading: [
            OutlineButton(
              onPressed: () => context.replace('/home'),
              density: ButtonDensity.icon,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ],
        ),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Scenario info card
                _buildScenarioCard(context, theme),
                SizedBox(height: 2.h),

                // Stats grid
                _buildStatsGrid(context, theme),
                SizedBox(height: 2.h),

                // Conversation details
                _buildConversationDetails(context, theme),
                SizedBox(height: 2.h),

                // Rounds
                Text('Rundy rozmowy', style: theme.typography.h3),
                SizedBox(height: 1.h),
                ...conversation.rounds.asMap().entries.map(
                  (entry) => _buildRoundCard(
                    context,
                    theme,
                    entry.key + 1,
                    entry.value,
                  ),
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScenarioCard(BuildContext context, ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary.withAlpha(25),
            theme.colorScheme.primary.withAlpha(13),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.primary.withAlpha(51)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withAlpha(77),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: theme.colorScheme.primary,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 3.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      scenario.title,
                      style: theme.typography.h3,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    ...[
                      SizedBox(height: 0.5.h),
                      Text(
                        scenario.description,
                        style: theme.typography.small.copyWith(
                          color: theme.colorScheme.mutedForeground,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatsGrid(BuildContext context, ThemeData theme) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 2.w,
      crossAxisSpacing: 2.w,
      childAspectRatio: 1.0,
      children: [
        _buildStatCard(
          context,
          theme,
          'Emocje',
          conversation.stats.emotionScore,
          Colors.pink,
          Icons.favorite_outline,
        ),
        _buildStatCard(
          context,
          theme,
          'Płynność',
          conversation.stats.fluencyScore,
          Colors.blue,
          Icons.waves,
        ),
        _buildStatCard(
          context,
          theme,
          'Słownictwo',
          conversation.stats.wordingScore,
          Colors.green,
          Icons.menu_book_outlined,
        ),
      ],
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    ThemeData theme,
    String label,
    int score,
    Color color,
    IconData icon,
  ) {
    return Container(
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color.withAlpha(25), color.withAlpha(13)],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withAlpha(51)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 22.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    score.toString(),
                    style: theme.typography.h2.copyWith(
                      color: theme.colorScheme.foreground,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('/100'),
                ],
              ),
              Text(
                label,
                style: theme.typography.xSmall.copyWith(
                  color: theme.colorScheme.mutedForeground,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildConversationDetails(BuildContext context, ThemeData theme) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Szczegóły konwersacji', style: theme.typography.h4),
            SizedBox(height: 1.5.h),
            _buildDetailRow(
              theme,
              Icons.access_time,
              'Utworzono',
              _formatDate(conversation.createdAt),
            ),
            SizedBox(height: 1.h),
            _buildDetailRow(
              theme,
              Icons.message_outlined,
              'Długość',
              ('${conversation.length}s'),
            ),
            SizedBox(height: 1.h),
            _buildDetailRow(
              theme,
              Icons.loop,
              'Rundy',
              conversation.rounds.length.toString(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(
    ThemeData theme,
    IconData icon,
    String label,
    String value,
  ) {
    return Row(
      children: [
        Icon(icon, size: 18.sp, color: theme.colorScheme.mutedForeground),
        SizedBox(width: 2.w),
        Text(
          '$label: ',
          style: theme.typography.small.copyWith(
            color: theme.colorScheme.mutedForeground,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: theme.typography.small.copyWith(fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildRoundCard(
    BuildContext context,
    ThemeData theme,
    int roundNumber,
    ConversationRatingRoundsModel round,
  ) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 0.8.h,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withAlpha(25),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: theme.colorScheme.primary.withAlpha(51),
                    ),
                  ),
                  child: Text(
                    'Runda $roundNumber',
                    style: theme.typography.small.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            ...round.transcript.map(
              (message) => _buildMessageBubble(context, theme, message),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageBubble(
    BuildContext context,
    ThemeData theme,
    ConversationRatingRoundsTranscriptModel message,
  ) {
    final isUser = message.side == 'user';
    final emotionIcon = _getEmotionIcon(message.emotions);

    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Row(
        mainAxisAlignment: isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!isUser)
            Container(
              padding: EdgeInsets.all(1.5.w),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary.withAlpha(77),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.smart_toy_outlined,
                size: 16.sp,
                color: theme.colorScheme.secondary,
              ),
            ),
          if (!isUser) SizedBox(width: 2.w),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isUser
                      ? [
                          theme.colorScheme.primary.withAlpha(51),
                          theme.colorScheme.primary.withAlpha(25),
                        ]
                      : [
                          theme.colorScheme.muted.withAlpha(77),
                          theme.colorScheme.muted.withAlpha(51),
                        ],
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isUser
                      ? theme.colorScheme.primary.withAlpha(77)
                      : theme.colorScheme.border,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (message.emotions.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.5.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(emotionIcon, style: TextStyle(fontSize: 14.sp)),
                          SizedBox(width: 1.w),
                          Flexible(
                            child: Text(
                              message.emotions,
                              style: theme.typography.xSmall.copyWith(
                                color: theme.colorScheme.mutedForeground,
                                fontStyle: FontStyle.italic,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  Text(message.text, style: theme.typography.small),
                ],
              ),
            ),
          ),
          if (isUser) SizedBox(width: 2.w),
          if (isUser)
            Container(
              padding: EdgeInsets.all(1.5.w),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withAlpha(77),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.person_outline,
                size: 16.sp,
                color: theme.colorScheme.primary,
              ),
            ),
        ],
      ),
    );
  }

  String _formatDate(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return dateStr;
    }
  }

  String _getEmotionIcon(String emotion) {
    final lowerEmotion = emotion.toLowerCase();
    if (lowerEmotion.contains('happy') || lowerEmotion.contains('radość')) {
      return '😊';
    } else if (lowerEmotion.contains('sad') ||
        lowerEmotion.contains('smutek')) {
      return '😢';
    } else if (lowerEmotion.contains('angry') ||
        lowerEmotion.contains('złość')) {
      return '😠';
    } else if (lowerEmotion.contains('excited') ||
        lowerEmotion.contains('podekscytowanie')) {
      return '🤩';
    } else if (lowerEmotion.contains('neutral') ||
        lowerEmotion.contains('neutralny')) {
      return '😐';
    } else if (lowerEmotion.contains('surprised') ||
        lowerEmotion.contains('zaskoczenie')) {
      return '😲';
    }
    return '💭';
  }
}
