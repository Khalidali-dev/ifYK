import 'package:flutter/material.dart';

class BounceButton extends StatefulWidget {
  final Widget child;
  final Function()? onTap;
  final double? tweenEnd;
  final int? durationMs;
  const BounceButton({super.key, required this.child, required this.onTap, this.tweenEnd, this.durationMs});

  @override
  State<BounceButton> createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Tween<double> _tween;

  @override
  void initState() {
    _tween = Tween(begin: 1, end: widget.tweenEnd ?? 1.3);
    _controller = AnimationController(duration: Duration(milliseconds: widget.durationMs ?? 80), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.onTap == null ? null : () {
        widget.onTap!();
        if(!_controller.isAnimating){
          _controller.forward().then((_) {
            _controller.reverse();
          });
          // _controller.repeat(reverse: true, period: const Duration(milliseconds: 1400));
        }
      },
      onLongPress: () {},
      child: ScaleTransition(
        scale: _tween.animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
