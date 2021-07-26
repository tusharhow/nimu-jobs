import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key? key,
    @required this.imgSrc,
    @required this.jobName,
    @required this.company,
    @required this.salary,
  }) : super(key: key);
  final imgSrc;
  final jobName;
  final company;
  final salary;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imgSrc),
          ),
          Text(
            jobName,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white60,
            ),
          ),
          Text(
            company,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white60,
            ),
          ),
          Text(
            salary,
            style: TextStyle(color: Colors.white54, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
