import 'package:education/utils/constants.dart';
import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: videoList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? primaryColor : primaryColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            videoList[index],
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          subtitle: const Text("20 min 50 sec"),
        );
      },
    );
  }
}
