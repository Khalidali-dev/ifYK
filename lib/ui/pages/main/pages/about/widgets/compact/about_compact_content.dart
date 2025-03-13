import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/widgets/compact_footer.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class AboutCompactContent extends StatelessWidget {
  const AboutCompactContent({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buildFeature(String title, String subtitle){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: ColorPalette.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              fontWeight: FontWeight.normal,
              fontSize: 22,
              color: ColorPalette.subTextColor,
            ),
          ),
          const Divider(color: ColorPalette.subTextColor, height: 50),
        ],
      );
    }

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "OUR",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      " MISSION",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
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
                    fontSize: 20,
                    color: ColorPalette.white,
                  ),
                ),
                const SizedBox(height: 30),
                const PngAsset('about_1', fit: BoxFit.cover,),
                const SizedBox(height: 15),
                Text(
                  "In an era dominated by social media and digital distractions, isolation has become too easy. We believe the core issue isn't a lack of desire to be social, but a lack of information on where to go. Whether it's the overwhelming variety of options in big cities or the lack of accessible event information in smaller areas, finding things to do can be challenging.\n\nThat's why we created ifYK. Our mission is to get people out and living life by simplifying event discovery and helping people connect in the real world.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: ColorPalette.white,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WHAT WE'VE",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      " CREATED",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
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
                    fontSize: 20,
                    color: ColorPalette.white,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "On ifYK, we’ve centralized events from nearly every major platform, making everything happening nearby instantly accessible.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: ColorPalette.subTextColor,
                  ),
                ),
                const SizedBox(height: 15),
                buildFeature(
                  "Centralized Event Listings",
                  "Access events from nearly every major platform in one place—no need to search anywhere else to make plans!",
                ),
                buildFeature(
                  "AI-Powered Recommendations",
                  "Our AI learns your preferences to provide personalized event suggestions, ensuring you see the most relevant events.",
                ),
                // _buildFeature(
                //   "Smart Search Bar & Chatbot",
                //   "Quickly find events or get instant assistance with our intelligent, AI-powered search bar and chatbot.",
                // ),
                buildFeature(
                  "Easy-to-Use Filters",
                  "Filter by distance, date, and category to refine your search results effortlessly.",
                ),
                buildFeature(
                  "Interactive Map",
                  "Explore nearby events with our user-friendly interactive map.",
                ),
                buildFeature(
                  "Seamless Calendar Integration",
                  "Effortlessly add events to your calendar with one tap, keeping your schedule organized and up-to-date.",
                ),
                // _buildFeature(
                //   "Personalized Notifications",
                //   "Receive notifications for events that match your interests and preferences.",
                // ),
                buildFeature(
                  "Social Sharing",
                  "Easily share events with friends and family to plan group outings.",
                ),
                buildFeature(
                  "Save Events",
                  "Save your favorite events to view later.",
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "STORY BEHIND",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      " ifYK",
                      style: GoogleFonts.unbounded(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: ColorPalette.primary ,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const PngAsset('about_2', fit: BoxFit.cover),
                const SizedBox(height: 30),
                Text(
                  "“As a 16-year-old in the suburbs of New York, my social options were limited. The crash of the NFT space, which I had dedicated most of my time to during tenth grade, highlighted my lack of real-life social opportunities.\n\nSince elementary school, I dreamed of creating an app. After realizing that neither I nor anyone I knew had a reliable way to find out what was happening nearby, I started ifYK.\n\nThe original concept was quite different from what we have today, as the events were all user-generated and focused on helping people discover and post their house parties (which I wanted to find out about myself).”\n\nAfter over a year of development I realized two major issues. Privacy Concerns: House parties are rarely made public, especially by people my age, as most don't want strangers showing up. Event Generation: Relying solely on user-generated events would make it difficult to populate the app with enough events to be useful.\n\nReflecting on these challenges, I returned to the fundamental question that inspired ifYK: “What’s going on near me?” I discovered that there wasn't a straightforward way to answer this. Events were scattered across numerous platforms, none optimized for event discovery.\n\nAfter two years of development hurdles, redesigns, and rebranding, we finally launched \"ifYK,\" a platform designed to effortlessly answer, “What’s going on near me?”",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: ColorPalette.white,
                  ),
                ),
                const SizedBox(height: 40),
                const PngAsset('about_signature_mobile', width: 300,),
              ],
            ),
          ),
          const CompactFooter(),
        ],
      ),
    );
  }
}
