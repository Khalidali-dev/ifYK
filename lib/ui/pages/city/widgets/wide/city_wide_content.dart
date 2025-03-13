import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/models/city/city.dart';
import 'package:ifyk_landing/models/explore_item/explore_item.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_feedbacks_section.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/widgets/wide_footer.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_wrapper.dart';
import 'package:ifyk_landing/ui/widgets/city_asset.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CityWideContent extends StatefulWidget {
  final City city;
  final TabsRouter tabsRouter;
  const CityWideContent({super.key, required this.city, required this.tabsRouter});

  @override
  State<CityWideContent> createState() => _CityWideContentState();
}

class _CityWideContentState extends State<CityWideContent> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ScrollOffsetController _scrollOffsetController = ScrollOffsetController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetListener _scrollOffsetListener = ScrollOffsetListener.create();
  late City _city;
  late List<Widget> _scrollWidgets;

  Widget _buildHeader(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BEST THINGS TO DO IN ${_city.name}",
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _city.details,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.normal,
              fontSize: 17,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/png/city_get_app_bg.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXPLORE ${_city.name} WITH",
                        style: GoogleFonts.unbounded(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "ifYK",
                        style: GoogleFonts.unbounded(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: ColorPalette.primary,
                        ),
                      ),
                      Text(
                        "Download ifYK now to unlock amazing deals and find the hottest events in ${_city.name.toTitleCase()}!",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: ColorPalette.subTextColor,
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: (){
                          launchUrl(Uri.parse('https://apps.apple.com/us/app/ifyk/id6468367267'));
                        },
                        child: const PngAsset(
                          'app_store',
                          width: 115,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Flexible(
                      child: GestureDetector(
                        onTap: (){
                          launchUrl(Uri.parse('https://play.google.com/store/apps/details?id=com.ifyk'));
                        },
                        child: const PngAsset(
                          'google_play',
                          width: 115,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  }
  Widget _buildSection(String title, String details, List<ExploreItem> items){
    buildExploreItem(ExploreItem item){
      final index = items.indexOf(item);
      final name = '${index+1}. ${item.name}';
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Text(
            name,
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          CityAsset(item.image,
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),

        ],
      );
    }
    return Column(
      // key: key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          title,
          style: GoogleFonts.unbounded(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: ColorPalette.primary,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          details,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.normal,
            color: ColorPalette.subTextColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        ...items.map((item) => buildExploreItem(item))
      ],
    );
  }
  Widget _buildFooter (){
    return Column(
      children: [
        const WideFeedbacksSection(),
        WideWrapper(
          maxWidth: 1200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Text(
                  _city.footerDetails,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: ColorPalette.subTextColor,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const WideFooter(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    _city = widget.city;
    _scrollWidgets = [
      _buildHeader(),
      _buildSection("TOP ATTRACTIONS IN ${_city.name}", _city.topAttractionsDetails, _city.topAttractions),
      _buildSection("CONCERTS", _city.concertsDetails, _city.concerts),
      _buildSection("FOOD AND DINING", _city.foodAndDiningDetails, _city.foodAndDining),
      _buildSection("NIGHTLIFE", _city.nightLifeDetails, _city.nightLife),
      _buildSection("OUTDOOR ADVENTURES", _city.outdoorAdventuresDetails, _city.outdoorAdventures),
      _buildSection("SPORTS", _city.sportsDetails, _city.sports),
      _buildSection("FESTIVALS", _city.festivalsDetails, _city.festivals),
      // _buildFooter()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorPalette.jumpToBgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Home  /  Cities  /  ",
                          style: GoogleFonts.almarai(
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                            color: ColorPalette.subTextColor
                          ),
                        ),
                        Text(
                          _city.name.toTitleCase(),
                          style: GoogleFonts.almarai(
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: MediaQuery.of(context).size.height -156,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 330,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: ColorPalette.jumpToBgColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "JUMP TO",
                                style: GoogleFonts.unbounded(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 30),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Top Attractions",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 2,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Concerts",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 3,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Food and Dining",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 4,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Nightlife",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 5,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Outdoor Adventures",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 6,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Sports",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () => _itemScrollController.scrollTo(
                                  index: 7,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                                child: Text(
                                  "Festivals",
                                  style: GoogleFonts.almarai(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          flex: 2,
                          child: ScrollablePositionedList.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) => _scrollWidgets[index],
                            itemScrollController: _itemScrollController,
                            scrollOffsetController: _scrollOffsetController,
                            itemPositionsListener: _itemPositionsListener,
                            scrollOffsetListener: _scrollOffsetListener,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}
