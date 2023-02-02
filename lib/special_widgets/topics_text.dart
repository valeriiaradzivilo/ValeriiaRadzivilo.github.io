import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TopicText extends StatelessWidget {
  final String text;

  const TopicText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: 100.w,
        color: const Color(0xFF38338e),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 4.h,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
