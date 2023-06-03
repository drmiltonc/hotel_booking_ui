import 'package:flutter/material.dart';
import '../gen/assets.gen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: Assets.images.photo.provider(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notification_important)),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Welcome Back 👋',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
