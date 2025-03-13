import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/router/router.gr.dart';
import 'package:ifyk_landing/ui/widgets/jpg_asset.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../../../../../constants/color_palette.dart';

class CompactCitiesSection extends StatefulWidget {
  const CompactCitiesSection({super.key});

  @override
  State<CompactCitiesSection> createState() => _CompactCitiesSectionState();
}

class _CompactCitiesSectionState extends State<CompactCitiesSection> {
  final CarouselSliderController _controller = CarouselSliderController();
  final List<String> _cities = [
    'new_york',
    'los_angeles',
    'chicago',
    'las_vegas',
    'houston',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 75, right: 75, top: 60, bottom: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BEST THINGS TO DO",
                  style: GoogleFonts.unbounded(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: ColorPalette.primary ,
                  ),
                ),
                Text(
                  "IN YOUR CITY",
                  style: GoogleFonts.unbounded(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        // shaderCallback: (Rect bounds) {
        //   return LinearGradient(
        //       colors: [Colors.transparent.withOpacity(0.05), Colors.white, Colors.white, Colors.transparent.withOpacity(0.05)],
        //       stops: const [0,.1,.9,1],
        //       begin: Alignment.centerLeft,
        //       end: Alignment.centerRight
        //     // tileMode: TileMode.mirror,
        //   ).createShader(bounds);
        // },
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 600,
            initialPage: 0,
            enableInfiniteScroll: false,
            // autoPlay: true,
          ),
          items: _cities.map((city) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: ()=> context.pushRoute(CityRoute(cityId: city.replaceAll(RegExp('_'), '-'))),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: JpgAsset(
                            city,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: PngAsset(
                              '${city}_text',
                              height: 70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        )
      ],
    );
  }
}
