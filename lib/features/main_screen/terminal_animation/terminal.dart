import 'package:flutter/material.dart';

class Terminal extends StatefulWidget {
  const Terminal({super.key});

  @override
  State<Terminal> createState() => _TerminalState();
}

class _TerminalState extends State<Terminal> with TickerProviderStateMixin {
  int currentLocation = 0;

  String word = 'Hello World!';

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1000),
    reverseDuration: const Duration(seconds: 1000),
    vsync: this,
    upperBound: word.length.toDouble(),
    value: currentLocation.toDouble(),
  )..repeat();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() async {
      if (currentLocation == word.length) {
        _controller.stop();
        return;
      }

      setState(() {
        currentLocation++;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1000),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              word.substring(0, currentLocation),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
    );
  }
}
