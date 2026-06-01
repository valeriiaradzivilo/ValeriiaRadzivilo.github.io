import 'dart:js_interop';

import 'package:flutter/material.dart';

@JS('location.reload')
external void _reload();

class SpiderAnimation extends StatefulWidget {
  const SpiderAnimation({super.key});

  @override
  State<SpiderAnimation> createState() => _SpiderAnimationState();
}

class _SpiderAnimationState extends State<SpiderAnimation>
    with SingleTickerProviderStateMixin {
  static const double _baseThread = 90.0;
  static const double _bobRange = 22.0;
  static const double _pullThreshold = 56.0;
  static const double _spiderSize = 30.0;

  late AnimationController _controller;
  late Animation<double> _bob;

  double _pullOffset = 0;
  bool _dragging = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);
    _bob = Tween(
      begin: 0.0,
      end: _bobRange,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDragStart(DragStartDetails _) {
    _controller.stop();
    setState(() {
      _dragging = true;
      _pullOffset = 0;
    });
  }

  void _onDragUpdate(DragUpdateDetails d) {
    setState(() {
      _pullOffset = (_pullOffset + d.delta.dy).clamp(0.0, _pullThreshold + 24);
    });
  }

  void _onDragEnd(DragEndDetails _) {
    if (_pullOffset >= _pullThreshold) {
      _reload();
      return;
    }
    setState(() {
      _dragging = false;
      _pullOffset = 0;
    });
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _bob,
      builder: (context, _) {
        final threadLen =
            _baseThread + (_dragging ? 0.0 : _bob.value) + _pullOffset;
        final triggered = _pullOffset >= _pullThreshold;

        return GestureDetector(
          onVerticalDragStart: _onDragStart,
          onVerticalDragUpdate: _onDragUpdate,
          onVerticalDragEnd: _onDragEnd,
          child: MouseRegion(
            cursor: _dragging
                ? SystemMouseCursors.grabbing
                : SystemMouseCursors.grab,
            child: SizedBox(
              width: _spiderSize + 20,
              height:
                  _baseThread + _bobRange + _pullThreshold + 28 + _spiderSize,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 1.5,
                      height: threadLen,
                      color: triggered
                          ? const Color(0xFFB71C1C)
                          : const Color(0xFF5D4037),
                    ),
                  ),
                  Positioned(
                    top: threadLen,
                    child: Icon(
                      Icons.bug_report_outlined,
                      size: _spiderSize,
                      color: triggered
                          ? const Color(0xFFB71C1C)
                          : Colors.black87,
                      shadows: [
                        const Shadow(
                          blurRadius: 4,
                          color: Colors.black45,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
