import 'package:flutter/material.dart';
import 'package:portfolio/my_projects/to_do_app/util/my_text.dart';
import 'package:portfolio/special_widgets/topic_plus_grid.dart';
import 'package:sizer/sizer.dart';
import 'extra_skills/abstract_factory.dart';
import 'extra_skills/builder_design_pattern/main_builder.dart';
import 'my_projects/api_project/views/home_page_api.dart';
import 'my_projects/calculator.dart';
import 'my_projects/calendar.dart';
import 'my_projects/to_do_app/main_to_do.dart';
import 'dart:math' as math;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Valeriia Radzivilo Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      );
    });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int currentIndex = 0;
  String stopOrResume = "Stop";

  List bigInfo = [
    ["General Information",null,"big"],
    [
      "Photo",
      "assets/images/my_photo.jpg", "big"
    ],
    [
      "About me",

      "I have completed several personal projects and have strong communication skills. As a junior Android developer, I am eager to apply my skills and continue learning in this field. I am committed to constantly improving and expanding my abilities, and I am excited to contribute to the success of a team."
      , "big"
    ],
  ];
  List myContacts = [
    ["Contact me",null,"contact"],

    [
      "City",
      "Kyiv, Ukraine", "contact"
    ],
    [
      "Phone",
      "+380997103409", "contact"
    ],
    [
      "Email",
      "radzivilovaleriia@gmail.com", "contact"
    ],

  ];

  List mySkills =
  [
    ["Skills",null,"skill"],
    ["Skills", "Java", "skill"],
    ["Skills", "Kotlin", "skill"],
    ["Skills", "Android Studio", "skill"],
    ["Skills", "REST API", "skill"],
    ["Skills", "MYSQL", "skill"],
    ["Skills", "Flutter", "skill"],
    ["Skills", "Git", "skill"],
    ["Skills", "Dart", "skill"],

  ];

  List linkButtonsList = [
    ["Profiles",null,"link"],
    [
      "LinkedIn profile",
      "https://www.linkedin.com/in/valeriia-radzivilo-0883ba248",
      "link"
    ],
    ["Personal Github", "https://github.com/valeriiaradzivilo",
      "link"],
    ["Study Github", "https://github.com/valeriia-radzivilo",
      "link"],
  ];

  List projectButtonsList = [
    ["Projects",null,"project"],
    ["Calendar for online teachers", SimpleCalendar(),"project"],
    ["REST API work", ApiWorkPage(),"project"],
    ["Calculator", Calculator(),"project"],
    ["To Doer", ToDoAppPage(),"project"],
    ["Design Pattern: Abstract Factory",AbstractFactory(),"project"],
    ["Design Pattern: Builder",BuilderAppHomePage(),"project"]
  ];

  late List listOfAllLists = [bigInfo,
    myContacts,
    mySkills,
    linkButtonsList,
    projectButtonsList];


  late AnimationController _cardAnimationController;
  late Animation cardAnim;

  @override
  initState() {
    listOfAllLists = [bigInfo,
      myContacts,
      mySkills,
      linkButtonsList,
      projectButtonsList];
    super.initState();
    _cardAnimationController = AnimationController(
      lowerBound: 0.0,
      upperBound: 2.0,
      duration: const Duration(seconds: 1),
      vsync: this,
    );



  }

  @override
  void dispose() {
    _cardAnimationController.dispose();
    super.dispose();
  }

  addCurrentIndex()
  {
    setState(() {
      if(currentIndex+1<=listOfAllLists.length)
      {
        currentIndex+=1;
      }
    });


  }
  bool selected = false;


  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 149, 211),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Valeriia Radzivilo",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black
        ),),
        backgroundColor: const Color(0xFFEEE16D),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [


            AnimatedBuilder(
              animation: _cardAnimationController,
              child: Dismissible(
                    resizeDuration: null,
                    onDismissed: (DismissDirection direction) {
                      setState(() {
                        _cardAnimationController.stop();
                        if(currentIndex+1<listOfAllLists.length && (currentIndex-1>=0)) {
                          currentIndex +=
                          direction == DismissDirection.endToStart ? 1 : -1;
                        }
                        else if(currentIndex==0)
                        {
                          currentIndex +=
                          direction == DismissDirection.endToStart ? 1 : listOfAllLists.length-1;
                        }
                        else if(currentIndex==listOfAllLists.length-1)
                        {
                          currentIndex +=
                          direction == DismissDirection.endToStart ? -listOfAllLists.length+1 : -1;
                        }

                      });
                    },
                    key: ValueKey(currentIndex),
                    child: TopicNGrid(gridlist: listOfAllLists.elementAt(currentIndex), columnsAmount:listOfAllLists.elementAt(currentIndex)[0][2]=="big"||listOfAllLists.elementAt(currentIndex)[0][2]=="skill"||listOfAllLists.elementAt(currentIndex)[0][2]=="project"? 2:1,)
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _cardAnimationController.value*-0.02,
                  origin: const Offset(100, 1000),
                  child: child,
                );

              },
            ),




            ElevatedButton.icon(onPressed: (){
              setState(() {
              if(_cardAnimationController.isAnimating) {
                    _cardAnimationController.stop();
                  }
              else {
                _cardAnimationController.repeat();
              }

              });
                }, icon: _cardAnimationController.isAnimating?Icon(Icons.pause_circle_outline_rounded):
                Icon(Icons.play_arrow_outlined),
                label:
                Text("${_cardAnimationController.isAnimating?"Stop":"Resume"} animation")
            ),
            
            
            MainText(text: "Hi, if you like my projects or you have some suggestions on how to improve them, text me on Gmail, you can find it on second page."),





          ],
        ),
        ),
    );
  }
}
