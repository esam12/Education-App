import 'package:education/utils/constants.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Discover the power of Flutter and Dart to create stunning, high-performance mobile apps for iOS and Android with the most comprehensive and bestselling Flutter course! With over 30 hours of comprehensive content, this course is the ultimate resource for anyone who wants to build beautiful, responsive, and feature-rich applications from scratch.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                "Course length : ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(
                Icons.timer,
                color: primaryColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "26 Hours",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Row(
            children: const [
              Text(
                "Course Rating : ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "4.5",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }
}
