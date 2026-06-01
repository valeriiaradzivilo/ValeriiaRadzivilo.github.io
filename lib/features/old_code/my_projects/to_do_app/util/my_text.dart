import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class MainText extends StatelessWidget {
  final String text;
  const MainText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
        child: Text(text,
          overflow: TextOverflow.ellipsis,
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 2.w+1.h),
          textAlign: TextAlign.center,
        ),
    );
  }
}
