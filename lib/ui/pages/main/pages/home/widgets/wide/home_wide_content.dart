import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/constants/constants.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/home_compact_content.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/news_letter_widget.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_download_widget.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_feedbacks_section.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_wrapper.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:url_launcher/url_launcher.dart';

import '../compact/widgets/compact_footer.dart';
import 'widgets/vertical_heading_widget.dart';

class HomeWideContent extends StatefulWidget {
  final TabsRouter tabsRouter;
  const HomeWideContent({super.key, required this.tabsRouter});

  @override
  State<HomeWideContent> createState() => _HomeWideContentState();
}

class _HomeWideContentState extends State<HomeWideContent> {
  @override
  Widget build(BuildContext context) {
    const double maxWidth = 1500;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth
        ? SizeUtil.screenWidth(context)
        : maxWidth;
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            WideWrapper(
              child: Column(
                children: [
                  size.width > 500
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: screenWidth / 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: screenWidth / 8),
                                    const PngAsset('all_events_one_place'),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: screenWidth / 30,
                                      ),
                                      child: const WideDownloadWidget(
                                          isHeader: true),
                                    ),
                                    SizedBox(height: screenWidth / 15)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 80),
                                child: PngAsset(
                                  'main_images',
                                  alignment: Alignment.topRight,
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 30, left: 30, right: 30),
                              child: PngAsset(
                                'all_events_one_place_compact',
                              ),
                            ),
                            Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      PngAsset(
                                        height: 30,
                                        'party',
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: PngAsset(
                                          height: 30,
                                          'fire',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, right: 100, top: 20),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: GestureDetector(
                                          onTap: () {
                                            launchUrl(Uri.parse(
                                                'https://apps.apple.com/us/app/ifyk/id6468367267'));
                                          },
                                          child: Transform.scale(
                                            scale: 1.6,
                                            child: const PngAsset(
                                              'app_store',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 50),
                                      Flexible(
                                        child: GestureDetector(
                                          onTap: () {
                                            launchUrl(Uri.parse(
                                                'https://play.google.com/store/apps/details?id=com.ifyk'));
                                          },
                                          child: Transform.scale(
                                              scale: 1.6,
                                              child: const PngAsset(
                                                  'google_play')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const PngAsset(
                              'main_images_compact',
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                            ),
                          ],
                        ),
                  NewsLetterWidget(),
                  height(20),
                  size.width > 500
                      ? const SizedBox()
                      : const VerticalHeadingWidget(
                          title1: "SEARCH FOR ",
                          title2: "EVENTS WITH AI",
                          fontSize1: 27,
                          fontSize2: 27,
                          weight1: FontWeight.w500,
                          weight2: FontWeight.w500,
                          color1: Colors.white,
                          color2: ColorPalette.primary),
                  height(10),
                  const CarouselSliderWidget(),
                  SizedBox(height: screenWidth / 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
                    child: PngAsset(
                      size.width > 500
                          ? 'going_out_made_easy'
                          : 'going_out_made_easy_compact',
                      fit: size.width > 500 ? BoxFit.contain : BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: screenWidth / 10),
                  size.width > 500
                      ? SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 1200),
                                  child: const PngAsset(
                                    'swipe_scroll_discover',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : const Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 70),
                          child: PngAsset(
                            'swipe_scroll_discover_compact',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                        ),
                ],
              ),
            ),
            const WideFeedbacksSection(),
            size.width > 500
                ? WideWrapper(
                    maxWidth: 1200,
                    child: WideFooter(),
                  )
                : const CompactFooter(),
          ],
        ),
      ),
    );
  }
}
