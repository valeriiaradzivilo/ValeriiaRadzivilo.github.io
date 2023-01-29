import 'package:flutter/cupertino.dart';

import 'package:portfolio/sections/contact_widget.dart';
import 'package:portfolio/special_widgets/project_buttons.dart';
import 'package:portfolio/special_widgets/social_links_button.dart';

class TopicNGrid extends StatelessWidget {
  final List gridlist;
  final int columnsAmount;

  const TopicNGrid({Key? key, required this.gridlist, required this.columnsAmount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

              SliverPadding(
                  padding: EdgeInsets.all(8.0),
                  sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: columnsAmount,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                        childAspectRatio: gridlist.elementAt(0)[2]=="big"?0.3:gridlist.elementAt(0)[2]=="contact"? 4: 2,
                      ),
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return gridlist.elementAt(index)[2]=="link"?
                        LinkButton(
                            text: gridlist.elementAt(index)[0],
                            urlText: gridlist.elementAt(index)[1]
                        ): gridlist.elementAt(index)[2]=="project"? 
                        ProjectButton(text: gridlist.elementAt(index)[0], page: gridlist.elementAt(index)[1]):
                            ContactsZip(type: gridlist.elementAt(index)[0], textInfo: gridlist.elementAt(index)[1])
                        ;
                      },
                        childCount: gridlist.length,)
                  )
              );
  }
}
