import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/providers/reviews_future_provider.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';
import 'package:ifyk_landing/ui/widgets/custom_text.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WideFeedbacksSection extends ConsumerStatefulWidget {
  const WideFeedbacksSection({super.key});

  @override
  ConsumerState createState() => _WideFeedbacksSectionState();
}

class _WideFeedbacksSectionState extends ConsumerState<WideFeedbacksSection> {
  final CarouselSliderController _controller = CarouselSliderController();
  // final double _btnSize = 50;
  @override
  Widget build(BuildContext context) {
    const double maxWidth = 1000;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth ? SizeUtil.screenWidth(context) : maxWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: screenWidth/9, bottom: screenWidth/30),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 13,
                  child: AutoSizeText(
                    "REAL STORIES ",
                    minFontSize: 10,
                    maxLines: 1,
                    style: GoogleFonts.unbounded(
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                      color: ColorPalette.primary ,
                    ),
                  ),
                ),
                Flexible(
                  flex: 20,
                  child: AutoSizeText(
                    "AND REAL EXPERIENCES",
                    minFontSize: 10,
                    maxLines: 1,
                    style: GoogleFonts.unbounded(
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          )
        ),

        ref.watch(reviewsFutureProvider).when(
          data: (reviews) {
            return ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                    colors: [Colors.transparent.withOpacity(0.05), Colors.white, Colors.white, Colors.transparent.withOpacity(0.05)],
                    stops: const [0,.1,.9,1],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  // tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  viewportFraction: 0.5,
                  height: 165,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  // autoPlay: true,
                ),
                items: reviews.map((review) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorPalette.feedbackBorderColor),
                            color: ColorPalette.feedbackBgColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              label: review.title,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(review.score, (index){
                                return const Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: PngAsset(
                                    'star',
                                    height: 20,
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(height: 5),
                            CustomText(
                              label: review.text,
                              fontSize: 13,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            );
          },
          error: (error, stackTrace) => const SizedBox(),
          loading: () => const CircularProgressIndicator(),
        )
      ],
    );
  }
}

