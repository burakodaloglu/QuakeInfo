import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/model/earthquake.dart';

class EarthquakeCardWidget extends StatelessWidget {
  final EarthquakeResponse? earthquake;

  const EarthquakeCardWidget({super.key, required this.earthquake});

  String _formatTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return DateFormat('yyyy-MM-dd HH:mm').format(date);
  }

  @override
  Widget build(BuildContext context) {
    // Earthquake widget'lerini oluşturuyoruz
    List<Widget> earthquakeWidgets = earthquake?.features.map((feature) {
      final place = feature.properties.place ?? 'Unknown location';
      final mag = feature.properties.mag ?? 'N/A';
      final earthquakeTime = feature.properties.time;
      final time = earthquakeTime != null ? _formatTime(earthquakeTime) : 'Unknown time';

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 6),
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Sol tarafta içerik (başlık + zaman)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$place",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("Time: $time", style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ),

              // Sağ ortada Mag değeri
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "$mag",
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );

    }).toList() ?? [];

    // Eğer earthquake null ise ya da liste boşsa, bir şey göstermemek için boş bir widget döndürüyoruz
    if (earthquake == null || earthquake!.features.isEmpty) {
      return const Center(child: Text("No earthquake data available."));
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.blue.shade50, // Kart arka planını burda da mavi tonuna ayarlıyoruz

      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tüm earthquake özelliklerini gösteriyoruz
            ...earthquakeWidgets,
          ],
        ),
      ),
    );
  }
}
