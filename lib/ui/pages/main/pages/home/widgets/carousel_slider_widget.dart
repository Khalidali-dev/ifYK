import 'package:ifyk_landing/ui/ui.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return PngAsset(
          size.width > 500
              ? "smart_search${index + 1}"
              : 'smart_search_compact',
          width: size.width,
          height: size.height,
          fit: size.width > 500 ? BoxFit.contain : BoxFit.fitWidth,
        );
      },
      itemCount: 2,
      options: CarouselOptions(
          autoPlay: true, viewportFraction: 1, height: size.height * .9),
    );
  }
}
