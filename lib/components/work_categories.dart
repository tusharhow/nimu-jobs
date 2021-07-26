import 'package:flutter/material.dart';

class WorkCategories extends StatelessWidget {
  const WorkCategories({
    Key? key,
    @required this.label,
  }) : super(key: key);
  final label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
