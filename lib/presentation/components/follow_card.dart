import 'package:flutter/material.dart';

import '../../domain/models/simple_user.dart';

class FollowCard extends StatelessWidget {
  const FollowCard({
    super.key,
    required this.title,
    required this.users,
    required this.onTap,
  });

  final String title;
  final List<SimpleUser> users;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ).copyWith(top: 16, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero.copyWith(left: 4),
                      visualDensity: const VisualDensity(vertical: -2),
                      leading: ClipOval(
                        child: Image.network(users[index].avatarUrl),
                      ),
                      title: Text(
                        users[index].name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
