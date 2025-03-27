import 'package:ifyk_landing/ui/ui.dart';

class ParallaxEffectWidget extends StatefulWidget {
  final ScrollController scrollController;
  const ParallaxEffectWidget({super.key, required this.scrollController});

  @override
  State<ParallaxEffectWidget> createState() => _ParallaxEffectWidgetState();
}

class _ParallaxEffectWidgetState extends State<ParallaxEffectWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(3, (index) {
        return Container(
          height: size.height,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(),
          child: AnimatedBuilder(
            animation: widget.scrollController,
            builder: (context, child) {
              final offset = widget.scrollController.hasClients
                  ? (widget.scrollController.offset - index * size.height) / 2
                  : 0.0;
              return Transform.translate(
                offset: Offset(0, offset),
                child: child,
              );
            },
            child: size.width > 500
                ? PngAsset(
                    "smart_search${index + 1}",
                    width: size.width,
                    height: size.height,
                    key: ValueKey(index),
                  )
                : PngAsset(
                    "smart_search_compact${index + 1}",
                    width: size.width,
                    height: size.height,
                    key: ValueKey(index),
                  ),
          ),
        );
      }),
    );
  }
}
