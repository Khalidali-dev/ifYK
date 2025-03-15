import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:url_launcher/url_launcher.dart';

import '../wide/widgets/blogs_page.dart';
import 'widgets/compact_feedbacks_section.dart';
import 'widgets/compact_footer.dart';

class HomeCompactContent extends StatefulWidget {
  const HomeCompactContent({super.key});

  @override
  State<HomeCompactContent> createState() => _HomeCompactContentState();
}

class _HomeCompactContentState extends State<HomeCompactContent> {
  List<String> images = [
    'all_events_one_place_compact',
    'party',
    'fire',
    'app_store',
    'google_play',
    'main_images_compact',
    'going_out_made_easy_compact',
    'interactive_map_view_compact',
    'easy_filters_compact',
    'swipe_scroll_discover_compact',
    'star',
    'footer_glow',
    'logo',
  ];

  @override
  void didChangeDependencies() {
    for (var image in images) {
      precacheImage(AssetImage('assets/png/$image.png'), context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: PngAsset(
              'all_events_one_place_compact',
            ),
          ),
          Stack(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
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
                            scale: 1.6, child: const PngAsset('google_play')),
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
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 60),
            child: PngAsset(
              'smart_search_compact',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, top: 60, bottom: 50),
            child: PngAsset(
              'going_out_made_easy_compact',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          Text(
            "NEVER MISS OUT",
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 27,
              color: ColorPalette.primary,
            ),
          ),
          Text(
            "ON LOCAL EVENTS",
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 27,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: PngAsset(
              'interactive_map_view_compact',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: PngAsset(
              'easy_filters_compact',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 70),
            child: PngAsset(
              'swipe_scroll_discover_compact',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          // const CompactCitiesSection(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              children: [
                Text(
                  "STAY UPTO DATE ",
                  style: GoogleFonts.delaGothicOne(
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    color: ColorPalette.primary,
                  ),
                ),
                Text(
                  "WITH",
                  style: GoogleFonts.delaGothicOne(
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    color: ColorPalette.primary,
                  ),
                ),
                Text(
                  " OUR BLOGS",
                  style: GoogleFonts.delaGothicOne(
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                  ),
                ),
              ],
            ),
          ),
          BlogsWidget(size: size),
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 140),
            color: Colors.grey.shade700,
            shape: const StadiumBorder(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [1, 2, 3, 4, 5]
                    .map((i) => const SizedBox(
                          width: 15,
                          height: 15,
                          child: Card(
                            color: Colors.black,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),

          const CompactFeedbacksSection(),
          const CompactFooter(),
        ],
      ),
    );
  }
}
