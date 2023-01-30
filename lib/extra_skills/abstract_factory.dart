import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/special_widgets/go_back_home_button.dart';
import 'package:slide_to_act/slide_to_act.dart';

class AbstractFactory extends StatefulWidget {
  const AbstractFactory({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => AbstractFactoryState();
}

class AbstractFactoryState extends State<AbstractFactory> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      runApp(AbstrFactApp(loadingWidgetFactory: AndroidLoadingWidgetFactory()));
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      runApp(AbstrFactApp(loadingWidgetFactory: IosLoadingWidgetFactory()));
    } else {
      runApp(const WebAbstrFactApp());
    }
    return const SizedBox(
      width: 100,
    );
  }
}

abstract class LoadingWidgetFactory {
  Widget createLoadingWidget();
}

class AndroidLoadingWidgetFactory implements LoadingWidgetFactory {
  @override
  Widget createLoadingWidget() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("This is loading widget for Android"),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class IosLoadingWidgetFactory implements LoadingWidgetFactory {
  @override
  Widget createLoadingWidget() {
    return Center(
      child: Column(
        children: const [
          Text("This is loading widget for IOS"),
          CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}

class AbstrFactApp extends StatelessWidget {
  final LoadingWidgetFactory loadingWidgetFactory;

  const AbstrFactApp({super.key, required this.loadingWidgetFactory});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              loadingWidgetFactory.createLoadingWidget(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: goBackHome(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WebAbstrFactApp extends StatefulWidget {
  const WebAbstrFactApp({super.key});

  @override
  State<WebAbstrFactApp> createState() => _WebAbstrFactAppState();
}

class _WebAbstrFactAppState extends State<WebAbstrFactApp> {
  bool isSwiped = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: isSwiped
                    ? AndroidLoadingWidgetFactory().createLoadingWidget()
                    : IosLoadingWidgetFactory().createLoadingWidget(),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SlideAction(
                  borderRadius: 12,
                  innerColor: const Color.fromARGB(255, 216, 177, 250),
                  outerColor: Colors.deepPurple,
                  text: "Change to IOS look",
                  onSubmit: () {
                    setState(() {
                      isSwiped = !isSwiped;
                    });
                  },
                ),
              ),
              const goBackHome(),
            ],
          ),
        ),
      ),
    );
  }
}
