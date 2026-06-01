import 'package:flutter/material.dart';
import 'package:portfolio/features/old_code/my_projects/to_do_app/util/my_text.dart';

class ProjectButton extends StatelessWidget {
  const ProjectButton({super.key, required this.text, required this.page});
  final String text;
  final StatefulWidget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFEEE16D),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0),
            // border radius
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: MainText(text: text),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
