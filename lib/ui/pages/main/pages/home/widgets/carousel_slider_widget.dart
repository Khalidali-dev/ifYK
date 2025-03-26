import 'dart:async';

import 'package:ifyk_landing/ui/ui.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % 3;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width > 500
        ? AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeOut,
            child: PngAsset(
              "smart_search${_currentIndex + 1}",
              width: size.width,
              height: size.height,
              key: ValueKey(_currentIndex),
            ),
          )
        : AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: PngAsset(
              "smart_search_compact${_currentIndex + 1}",
              width: size.width,
              height: size.height,
              key: ValueKey(_currentIndex),
            ),
          );
  }
}
