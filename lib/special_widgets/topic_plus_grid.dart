import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/special_widgets/contact_widget.dart';
import 'package:portfolio/special_widgets/main_text.dart';
import 'package:portfolio/special_widgets/project_buttons.dart';
import 'package:portfolio/special_widgets/social_links_button.dart';
import 'package:portfolio/special_widgets/topics_text.dart';
import 'package:sizer/sizer.dart';

class TopicNGrid extends StatelessWidget {
  final List gridList;
  final int columnsAmount;

  const TopicNGrid({Key? key, required this.gridList, required this.columnsAmount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFB9CFF8),
        ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TopicText(text: gridList.elementAt(0)[0]),
              ),
              Expanded(
                child: Padding(padding: const EdgeInsets.all(20),
                child: GridView.builder(
                    itemCount: gridList.length-1,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columnsAmount,
                      childAspectRatio: gridList.elementAt(0)[2]=="big"?(1 / 6):gridList.elementAt(0)[2]=="project"? (1/0.6):(1 / 0.4),
                ),
                    itemBuilder: (BuildContext context, int index) {
                      index+=1;
                      return gridList.elementAt(index)[2]=="link"?
                      LinkButton(
                          text: gridList.elementAt(index)[0],
                          urlText: gridList.elementAt(index)[1]
                      ): gridList.elementAt(index)[2]=="project"?
                      ProjectButton(text: gridList.elementAt(index)[0], page: gridList.elementAt(index)[1]):
                      gridList.elementAt(index)[2]=="skill"?

                          MainText(text: gridList.elementAt(index)[1], levelBold: 1, paddingLevel: 1)

                      : ContactsZip(type: gridList.elementAt(index)[0], textInfo: gridList.elementAt(index)[1]);


                    }),
                ),
              ),
            ],

        ),
      ),
    );
  }
}
