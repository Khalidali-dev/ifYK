import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_wrapper.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class AboutWideContent extends StatelessWidget {
  final TabsRouter tabsRouter;
  const AboutWideContent({super.key, required this.tabsRouter});

  Widget _buildFeature(String title, String subtitle){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(color: ColorPalette.subTextColor, height: 60),
          Text(
            title,
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: ColorPalette.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: GoogleFonts.almarai(
              fontWeight: FontWeight.normal,
              fontSize: 25,
              color: ColorPalette.subTextColor,
            ),
          )
        ],
      ),
      );
  }
  @override
  Widget build(BuildContext context) {
    const double maxWidth = 1200;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth ? SizeUtil.screenWidth(context) : maxWidth;
    return SingleChildScrollView(
      child: Center(
        child: WideWrapper(
          maxWidth: maxWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "OUR",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      " MISSION",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        color: ColorPalette.primary ,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "BRINGING PEOPLE TOGETHER IN PERSON",
                  style: GoogleFonts.almarai(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorPalette.white,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(child: PngAsset('about_1', fit: BoxFit.cover,)),
                    const SizedBox(width: 30),
                    Expanded(
                      child:
                      Text(
                        "In an era dominated by social media and digital distractions, isolation has become too easy. We believe the core issue isn't a lack of desire to be social, but a lack of information on where to go. Whether it's the overwhelming variety of options in big cities or the lack of accessible event information in smaller areas, finding things to do can be challenging.\n\nThat's why we created ifYK. Our mission is to get people out and living life by simplifying event discovery and helping people connect in the real world.",
                        style: GoogleFonts.almarai(
                          fontWeight: FontWeight.normal,
                          fontSize: screenWidth/52,
                          color: ColorPalette.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "WHAT WE'VE",
                            style: GoogleFonts.unbounded(
                              fontWeight: FontWeight.w500,
                              fontSize: 35,
                            ),
                          ),
                          Text(
                            " CREATED",
                            style: GoogleFonts.unbounded(
                              fontWeight: FontWeight.w500,
                              fontSize: 35,
                              color: ColorPalette.primary ,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "THE EVENT PLANNING HUB",
                        style: GoogleFonts.almarai(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: ColorPalette.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "On ifYK, we’ve centralized events from nearly every major platform, making everything happening nearby instantly accessible.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.almarai(
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                          color: ColorPalette.subTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFeature(
                      "Centralized Event Listings",
                      "Access events from nearly every major platform in one place—no need to search anywhere else to make plans!",
                    ),
                    const SizedBox(width: 40),
                    _buildFeature(
                      "AI-Powered Recommendations",
                      "Our AI learns your preferences to provide personalized event suggestions, ensuring you see the most relevant events.",
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFeature(
                      "Easy-to-Use Filters",
                      "Filter by distance, date, and category to refine your search results effortlessly.",
                    ),
                    // _buildFeature(
                    //   "Smart Search Bar & Chatbot",
                    //   "Quickly find events or get instant assistance with our intelligent, AI-powered search bar and chatbot.",
                    // ),
                    const SizedBox(width: 40),
                    _buildFeature(
                      "Interactive Map",
                      "Explore nearby events with our user-friendly interactive map.",
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFeature(
                      "Seamless Calendar Integration",
                      "Effortlessly add events to your calendar with one tap, keeping your schedule organized and up-to-date.",
                    ),
                    const SizedBox(width: 40),
                    _buildFeature(
                      "Social Sharing",
                      "Easily share events with friends and family to plan group outings.",
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFeature(
                      "Save Events",
                      "Save your favorite events to view later.",
                    ),

                    // _buildFeature(
                    //   "Personalized Notifications",
                    //   "Receive notifications for events that match your interests and preferences.",
                    // ),
                    const SizedBox(width: 40),
                    const Spacer()
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "STORY BEHIND",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      " ifYK",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        color: ColorPalette.primary ,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(child: PngAsset('about_2', fit: BoxFit.cover,)),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "“As a 16-year-old in the suburbs of New York, my social options were limited. The crash of the NFT space, which I had dedicated most of my time to during tenth grade, highlighted my lack of real-life social opportunities.\n\nSince elementary school, I dreamed of creating an app. After realizing that neither I nor anyone I knew had a reliable way to find out what was happening nearby, I started ifYK.\n\nThe original concept was quite different from what we have today, as the events were all user-generated and focused on helping people discover and post their house parties (which I wanted to find out about myself).”\n\nAfter over a year of development I realized two major issues. Privacy Concerns: House parties are rarely made public, especially by people my age, as most don't want strangers showing up. Event Generation: Relying solely on user-generated events would make it difficult to populate the app with enough events to be useful.\n\nReflecting on these challenges, I returned to the fundamental question that inspired ifYK: “What’s going on near me?” I discovered that there wasn't a straightforward way to answer this. Events were scattered across numerous platforms, none optimized for event discovery.\n\nAfter two years of development hurdles, redesigns, and rebranding, we finally launched \"ifYK,\" a platform designed to effortlessly answer, “What’s going on near me?”",
                            style: GoogleFonts.almarai(
                              fontWeight: FontWeight.normal,
                              fontSize: 26,
                              color: ColorPalette.white,
                            ),
                          ),
                          const SizedBox(height: 40),
                          const PngAsset('about_signature'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const WideFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
