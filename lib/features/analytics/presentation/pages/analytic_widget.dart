import 'package:odpalgadke/features/analytics/data/models/analytic_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AnalyticWidget extends StatelessWidget {
  final AnalyticModel analytic;

  const AnalyticWidget({super.key, required this.analytic});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Przegląd analityki',
                    style: theme.typography.h3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (analytic.currentStreak != null) ...[
                  SizedBox(width: 2.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 0.8.h,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.destructive.withAlpha(25),
                          theme.colorScheme.destructive.withAlpha(13),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: theme.colorScheme.destructive.withAlpha(51),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          size: 16.sp,
                          color: theme.colorScheme.destructive,
                        ),
                        SizedBox(width: 1.w),
                        Text(
                          '${analytic.currentStreak} dni',
                          style: theme.typography.small.copyWith(
                            color: theme.colorScheme.destructive,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            SizedBox(height: 2.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard(
                  context,
                  'Rozmowy',
                  analytic.analytics.conversations?.toString() ?? '0',
                  Icons.chat_bubble_outline,
                  theme.colorScheme.primary,
                ),
                _buildStatCard(
                  context,
                  'Czas spędzony',
                  _formatNumber(analytic.analytics.totalLength),
                  Icons.text_fields,
                  theme.colorScheme.primary,
                ),
              ],
            ),
            SizedBox(height: 2.h),

            Text('Średnie wyniki', style: theme.typography.h4),
            SizedBox(height: 1.5.h),

            _buildScoreBar(
              context,
              'Emocje',
              analytic.analytics.averageEmotion ?? 0,
              Colors.pink,
              analytic.trends.emotionScore,
            ),
            SizedBox(height: 1.2.h),

            _buildScoreBar(
              context,
              'Płynność',
              analytic.analytics.averageFluency ?? 0,
              Colors.blue,
              analytic.trends.fluencyScore,
            ),
            SizedBox(height: 1.2.h),

            _buildScoreBar(
              context,
              'Słownictwo',
              analytic.analytics.averageWording ?? 0,
              Colors.green,
              analytic.trends.wordingScore,
            ),

            SizedBox(height: 2.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: theme.colorScheme.muted.withAlpha(77),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: theme.colorScheme.border),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.trending_up,
                    color: theme.colorScheme.mutedForeground,
                    size: 20.sp,
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    child: Text(
                      'Trendy: ${_getTrendsSummary(analytic.trends)}',
                      style: theme.typography.small.copyWith(
                        color: theme.colorScheme.mutedForeground,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    final theme = Theme.of(context);

    return Container(
      width: 40.w,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 2.w,
            children: [
              Icon(icon, color: color, size: 22.sp),
              Text(
                value,
                style: theme.typography.h2.copyWith(
                  color: theme.colorScheme.foreground,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Text(
            label,
            style: theme.typography.small.copyWith(
              color: theme.colorScheme.mutedForeground,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildScoreBar(
    BuildContext context,
    String label,
    int score,
    Color color,
    int? trend,
  ) {
    final theme = Theme.of(context);
    final percentage = (score / 100).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                label,
                style: theme.typography.small.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  score.toString(),
                  style: theme.typography.small.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (trend != null) ...[
                  SizedBox(width: 1.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 1.5.w,
                      vertical: 0.3.h,
                    ),
                    decoration: BoxDecoration(
                      color: trend >= 0
                          ? Colors.green.withAlpha(25)
                          : Colors.red.withAlpha(25),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          trend >= 0
                              ? Icons.arrow_upward
                              : Icons.arrow_downward,
                          size: 10.sp,
                          color: trend >= 0 ? Colors.green : Colors.red,
                        ),
                        SizedBox(width: 0.5.w),
                        Text(
                          '${trend.abs()}',
                          style: theme.typography.xSmall.copyWith(
                            color: trend >= 0 ? Colors.green : Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
        SizedBox(height: 0.8.h),
        Stack(
          children: [
            Container(
              height: 8,
              decoration: BoxDecoration(
                color: theme.colorScheme.muted.withAlpha(77),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            FractionallySizedBox(
              widthFactor: percentage,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color, color.withAlpha(179)],
                  ),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: color.withAlpha(77),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _formatNumber(int? number) {
    if (number == null) return '0';
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }

  String _getTrendsSummary(AnalyticTrendsModel trends) {
    final items = [];

    if (trends.conversations != null && trends.conversations != 0) {
      items.add(
        '${trends.conversations! > 0 ? '+' : ''}${trends.conversations} rozmów',
      );
    }
    if (trends.totalLength != null && trends.totalLength != 0) {
      items.add(
        '${trends.totalLength! > 0 ? '+' : ''}${trends.totalLength} długość',
      );
    }

    return items.isEmpty ? 'Brak znaczących zmian' : items.join(', ');
  }
}
