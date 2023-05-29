import 'package:education/utils/constants.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatefulWidget {
  final String img;
  const CoursesScreen({super.key, required this.img});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.notifications),
            color: primaryColor,
            iconSize: 25,
          ),
        ],
        title: Text(
          widget.img,
          style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: size.width,
            height: size.height * 0.24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFF5F3FF),
              image: DecorationImage(
                image: AssetImage('assets/images/${widget.img}.png'),
              ),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.play_arrow,
                  color: primaryColor,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            "${widget.img} Complete Course",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            "Created by Dear Programmer",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Text(
            "55 Videos",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
