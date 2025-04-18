import 'package:ifyk_landing/ui/ui.dart';

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
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth
        ? SizeUtil.screenWidth(context)
        : maxWidth;
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        size.width > 500
            ? Padding(
                padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: screenWidth / 9,
                    bottom: screenWidth / 30),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 13,
                        child: AutoSizeText(
                          "REAL STORIES ",
                          minFontSize: 10,
                          maxLines: 1,
                          style: GoogleFonts.delaGothicOne(
                            fontWeight: FontWeight.w400,
                            fontSize: 32,
                            color: ColorPalette.primary,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 20,
                        child: AutoSizeText(
                          "AND REAL EXPERIENCES",
                          minFontSize: 10,
                          maxLines: 1,
                          style: GoogleFonts.delaGothicOne(
                            fontWeight: FontWeight.w400,
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
            : Padding(
                padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: screenWidth / 9,
                    bottom: screenWidth / 30),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            "REAL STORIES ",
                            minFontSize: 10,
                            maxLines: 1,
                            style: GoogleFonts.delaGothicOne(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: ColorPalette.primary,
                            ),
                          ),
                          AutoSizeText(
                            "AND ",
                            minFontSize: 10,
                            maxLines: 1,
                            style: GoogleFonts.delaGothicOne(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: ColorPalette.white,
                            ),
                          ),
                        ],
                      ),
                      AutoSizeText(
                        "REAL EXPERIENCES",
                        minFontSize: 10,
                        maxLines: 1,
                        style: GoogleFonts.delaGothicOne(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )),
        height(20),
        ref.watch(reviewsFutureProvider).when(
              data: (reviews) {
                return CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    viewportFraction: size.width > 500 ? 0.5 : 1,
                    height: size.width > 1200
                        ? size.height * .25
                        : size.height * .2,
                    scrollPhysics: const BouncingScrollPhysics(),
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    // autoPlay: true,
                  ),
                  items: reviews.map((review) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width > 500 ? 10 : 30),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorPalette.feedbackBorderColor),
                              color: ColorPalette.feedbackBgColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 5,
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
                              height(5),
                              CustomText(
                                label: review.text,
                                fontSize: 13,
                                maxLines: 3,
                                align: TextAlign.center,
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
            )
      ],
    );
  }
}
