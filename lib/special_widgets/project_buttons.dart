import 'package:flutter/material.dart';
import 'package:portfolio/special_widgets/main_text.dart';
import 'package:sizer/sizer.dart';

class ProjectButton extends StatelessWidget {
  const ProjectButton({Key? key, required this.text, required this.page}) : super(key: key);
  final String text;
  final StatefulWidget page;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 33.w,
      height: 10.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFEEE16D),

            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 0,
                ),
                // border radius
                borderRadius: BorderRadius.circular(16)
            ),
          ),
          child: MainText(text: text, levelBold: 1, paddingLevel: 0,
          ),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page));
          },
        ),
      ),
    );
  }
}
