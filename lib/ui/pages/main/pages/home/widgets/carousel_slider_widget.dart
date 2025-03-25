import 'package:ifyk_landing/ui/ui.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width > 500
        ? CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              return PngAsset(
                "smart_search${index + 1}",
                width: size.width,
                height: size.height,
              );
            },
            itemCount: 3,
            options: CarouselOptions(
                autoPlay: true, viewportFraction: 1, height: size.height * .9),
          )
        : Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/png/bg.png"))),
            child: CarouselSlider.builder(
              itemBuilder: (context, index, realIndex) {
                return PngAsset(
                  'smart_search_compact${index + 1}',
                  width: size.width,
                  height: size.height,
                );
              },
              itemCount: 3,
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  height: size.height * .9),
            ),
          );
  }
}
