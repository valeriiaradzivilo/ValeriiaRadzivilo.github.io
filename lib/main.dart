import 'package:flutter/material.dart';
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


  late AnimationController _controller;

  @override
  initState() {
    listOfAllLists = [bigInfo,
      myContacts,
      mySkills,
      linkButtonsList,
      projectButtonsList];
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();



  }
  @override
  void dispose() {
    _controller.dispose();
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

  @override
  Widget build(BuildContext context) {
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
              animation: _controller,
              child: Dismissible(
                    resizeDuration: null,
                    onDismissed: (DismissDirection direction) {
                      setState(() {
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
                  angle: _controller.value*0.05,
                  child: child,
                );
              },
            ),

            ElevatedButton.icon(onPressed: (){
              setState(() {
              if(_controller.isAnimating) {
                    _controller.stop();
                  }
              else{
                _controller.repeat();
              }


              });
                }, icon: _controller.isAnimating?Icon(Icons.pause_circle_outline_rounded):
                Icon(Icons.play_arrow_outlined),
                label:
                Text("${_controller.isAnimating?"Stop":"Resume"} animation")
            )

          ],
        ),
        ),
    );
  }
}
