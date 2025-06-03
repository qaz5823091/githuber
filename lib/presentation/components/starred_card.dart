import 'package:flutter/material.dart';

class StarredCard extends StatelessWidget {
  const StarredCard({super.key, required this.repos});

  final List<String> repos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Starred Repos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 200),
            child: CarouselView(
              itemExtent: 300,
              children: List<Widget>.generate(repos.length, (index) {
                return SizedBox(
                  height: 200,
                  child: Image.network(
                    repos[index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
