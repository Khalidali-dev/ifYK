import 'package:flutter/cupertino.dart';

class WideWrapper extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  const WideWrapper({super.key, required this.child, this.maxWidth = 1500});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: child,
    );
  }
}
