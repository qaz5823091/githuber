import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class ContributionCard extends StatelessWidget {
  const ContributionCard({super.key, required this.datasets});

  final Map<DateTime, int>? datasets;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contributions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            HeatMap(
              datasets: datasets,
              colorMode: ColorMode.opacity,
              showText: false,
              scrollable: true,
              colorsets: {1: Theme.of(context).primaryColor},
              onClick: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
