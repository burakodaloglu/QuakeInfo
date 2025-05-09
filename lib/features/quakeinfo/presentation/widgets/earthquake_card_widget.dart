import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../data/model/earthquake.dart';

class EarthquakeCardWidget extends StatelessWidget {
  final EarthquakeResponse? earthquake;

  const EarthquakeCardWidget({super.key, required this.earthquake});

  String _formatTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return DateFormat('HH:mm').format(date);
  }

  String _timeAgo(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return timeago.format(date, locale: 'tr');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (earthquake == null || earthquake!.features.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Deprem verisi bulunamadı",
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withOpacity(0.6),
          ),
        ),
      );
    }

    return Column(
      children:
          earthquake!.features.asMap().entries.map((entry) {
            final index = entry.key;
            final feature = entry.value;
            final isLast = index == earthquake!.features.length - 1;

            final place = feature.properties.place?.split(', ') ?? [];
            final cityCountry = place.take(2).join(', ');
            final region = place.length > 2 ? place[2] : '';
            final mag = feature.properties.mag?.toStringAsFixed(2) ?? 'N/A';
            final time = feature.properties.time;

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cityCountry,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: colorScheme.onSurface,
                              ),
                            ),
                            if (region.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  region,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurface.withOpacity(
                                      0.7,
                                    ),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 8),
                            Text(
                              time != null ? _timeAgo(time) : '--',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurface.withOpacity(0.6),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              time != null ? _formatTime(time) : '--:--',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurface.withOpacity(0.6),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: colorScheme.error.withOpacity(0.6),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          mag,
                          style: TextStyle(
                            color: colorScheme.error,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!isLast)
                  Divider(
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                    color: colorScheme.outline.withOpacity(0.3),
                  ),
              ],
            );
          }).toList(),
    );
  }
}
