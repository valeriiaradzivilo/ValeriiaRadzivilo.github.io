import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'button_to_save.dart';

class DialogueCheck extends StatelessWidget {
  final controller;
  VoidCallback onYes;
  VoidCallback onNo;
  DialogueCheck({super.key, required this.controller, required this.onYes, required this.onNo});


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.redAccent,
      content: SizedBox(
        width: 60.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Are you sure you want to delete task box?',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 7.w),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(name: 'No', onPressed: onNo),
                SizedBox(width: 20.w,),
                MyButton(name: 'Yes', onPressed: onYes),
              ],
            )
          ],
        ),
      ),

    );
  }
}
