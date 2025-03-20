import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/constants/constants.dart';
import 'package:ifyk_landing/models/features_model.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_wrapper.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

import '../../../home/widgets/compact/widgets/compact_footer.dart';

class AboutWideContent extends StatelessWidget {
  final TabsRouter tabsRouter;
  const AboutWideContent({super.key, required this.tabsRouter});

  Widget _buildFeature(String title, String subtitle, Size size) {
    return Column(
      crossAxisAlignment: size.width > 500
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        const Divider(color: ColorPalette.subTextColor, height: 60),
        Text(
          title,
          style: GoogleFonts.delaGothicOne(
            fontWeight: FontWeight.w500,
            fontSize: size.width > 500 ? 25 : 22,
            color: ColorPalette.white,
          ),
        ),
        height(20),
        Text(
          subtitle,
          style: GoogleFonts.almarai(
            fontWeight: FontWeight.normal,
            fontSize: size.width > 500 ? 25 : 22,
            color: ColorPalette.subTextColor,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const double maxWidth = 1200;

    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: WideWrapper(
          maxWidth: maxWidth,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width > 500 ? 30 : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height(50),
                    OurMissionWidget(),
                    height(50),
                    Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "WHAT WE'VE",
                                style: GoogleFonts.delaGothicOne(
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.width > 500 ? 35 : 24,
                                ),
                              ),
                              Text(
                                " CREATED",
                                style: GoogleFonts.delaGothicOne(
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.width > 500 ? 35 : 24,
                                  color: ColorPalette.primary,
                                ),
                              ),
                            ],
                          ),
                          height(10),
                          Text(
                            "THE EVENT PLANNING HUB",
                            style: GoogleFonts.almarai(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width > 500 ? 24 : 20,
                              color: ColorPalette.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            "On ifYK, we’ve centralized events from nearly every major platform, making everything happening nearby instantly accessible.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.almarai(
                              fontWeight: FontWeight.normal,
                              fontSize: size.width > 500 ? 24 : 20,
                              color: ColorPalette.subTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height(20),
                    size.width > 500
                        ? GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: size.height * .36,
                                    crossAxisSpacing: 20),
                            itemCount: allFeatures.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final feature = allFeatures[index];
                              return _buildFeature(
                                  feature.title, feature.desc, size);
                            },
                          )
                        : ListView.builder(
                            itemCount: allFeatures.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final feature = allFeatures[index];
                              return _buildFeature(
                                  feature.title, feature.desc, size);
                            },
                          ),
                    height(50),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "THE STORY BEHIND",
                          style: GoogleFonts.delaGothicOne(
                            fontWeight: FontWeight.w400,
                            fontSize: size.width > 500 ? 35 : 24,
                          ),
                        ),
                        Text(
                          " ifYK",
                          style: GoogleFonts.delaGothicOne(
                            fontWeight: FontWeight.w400,
                            fontSize: size.width > 500 ? 35 : 24,
                            color: ColorPalette.primary,
                          ),
                        ),
                      ],
                    ),
                    height(10),
                    ImageTextWidget(
                        isStory: true, image: "about_2", desc: storyDesc),
                    height(30),
                  ],
                ),
              ),
              size.width > 500
                  ? WideWrapper(
                      maxWidth: 1200,
                      child: WideFooter(),
                    )
                  : const CompactFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class OurMissionWidget extends StatelessWidget {
  OurMissionWidget({
    super.key,
  });

  String desc =
      "In an era dominated by social media and digital distractions, isolation has become too easy. We believe the core issue isn't a lack of desire to be social, but a lack of information on where to go. Whether it's the overwhelming variety of options in big cities or the lack of accessible event information in smaller areas, finding things to do can be challenging.\n\nThat's why we created ifYK. Our mission is to get people out and living life by simplifying event discovery and helping people connect in the real world.";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "OUR",
              style: GoogleFonts.delaGothicOne(
                fontWeight: FontWeight.w400,
                fontSize: size.width > 500 ? 35 : 24,
              ),
            ),
            Text(
              " MISSION",
              style: GoogleFonts.delaGothicOne(
                fontWeight: FontWeight.w400,
                fontSize: size.width > 500 ? 35 : 24,
                color: ColorPalette.primary,
              ),
            ),
          ],
        ),
        height(10),
        Text(
          "BRINGING PEOPLE TOGETHER IN PERSON",
          style: GoogleFonts.almarai(
            fontWeight: FontWeight.w700,
            fontSize: size.width > 500 ? 24 : 16,
            color: ColorPalette.white,
          ),
        ),
        height(20),
        ImageTextWidget(
          image: 'about_1',
          desc: desc,
        )
      ],
    );
  }
}

class ImageTextWidget extends StatelessWidget {
  const ImageTextWidget({
    super.key,
    required this.image,
    required this.desc,
    this.isStory = false,
  });

  final String image, desc;
  final bool isStory;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > 500
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: PngAsset(
                image,
                fit: BoxFit.cover,
              )),
              width(30),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      desc,
                      style: GoogleFonts.almarai(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: ColorPalette.white,
                      ),
                    ),
                    isStory ? height(40) : const SizedBox.shrink(),
                    isStory
                        ? const PngAsset('about_signature')
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ],
          )
        : Column(
            children: [
              PngAsset(
                image,
                fit: BoxFit.cover,
              ),
              height(30),
              Text(
                desc,
                style: GoogleFonts.almarai(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: ColorPalette.white,
                ),
              ),
              isStory ? height(40) : const SizedBox.shrink(),
              isStory
                  ? const PngAsset('about_signature')
                  : const SizedBox.shrink(),
            ],
          );
  }
}
