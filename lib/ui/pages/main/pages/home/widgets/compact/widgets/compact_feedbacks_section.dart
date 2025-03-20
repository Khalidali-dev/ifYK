import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/providers/reviews_future_provider.dart';
import 'package:ifyk_landing/ui/widgets/custom_text.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class CompactFeedbacksSection extends ConsumerStatefulWidget {
  const CompactFeedbacksSection({super.key});

  @override
  ConsumerState createState() => _CompactFeedbacksSectionState();
}

class _CompactFeedbacksSectionState
    extends ConsumerState<CompactFeedbacksSection> {
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "REAL STORIES",
              style: GoogleFonts.unbounded(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: ColorPalette.primary,
              ),
            ),
            Text(
              " AND",
              style: GoogleFonts.unbounded(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          ],
        ),
        Text(
          "REAL EXPERIENCES",
          style: GoogleFonts.unbounded(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 20),
        ref.watch(reviewsFutureProvider).when(
              data: (reviews) {
                return CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: 170,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorPalette.feedbackBorderColor),
                              color: ColorPalette.feedbackBgColor,
                              borderRadius: BorderRadius.circular(20)),
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
                                children: List.generate(review.score, (index) {
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
                );
              },
              error: (error, stackTrace) => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
            ),
      ],
    );
  }
}
