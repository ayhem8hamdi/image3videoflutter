import 'package:flutter/material.dart';

class FloatingAnimationWidget extends StatefulWidget {
  final Widget child;
  final double begin;
  final double end;
  final Duration duration;
  final Curve curve;

  const FloatingAnimationWidget({
    super.key,
    required this.child,
    this.begin = -4.0,
    this.end = 4.0,
    this.duration = const Duration(milliseconds: 1000),
    this.curve = Curves.easeInOut,
  });

  @override
  State<FloatingAnimationWidget> createState() =>
      _FloatingAnimationWidgetState();
}

class _FloatingAnimationWidgetState extends State<FloatingAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this)
      ..repeat(reverse: true);

    _animation = Tween<double>(
      begin: widget.begin,
      end: widget.end,
    ).animate(CurvedAnimation(parent: _controller, curve: widget.curve));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
