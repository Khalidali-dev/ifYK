import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/models/city/city.dart';
import 'package:ifyk_landing/models/explore_item/explore_item.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/widgets/compact_feedbacks_section.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/widgets/compact_footer.dart';
import 'package:ifyk_landing/ui/widgets/city_asset.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CityCompactContent extends StatefulWidget {
  final City city;
  final TabsRouter tabsRouter;
  const CityCompactContent({super.key, required this.city, required this.tabsRouter});

  @override
  State<CityCompactContent> createState() => _CityCompactContentState();
}

class _CityCompactContentState extends State<CityCompactContent> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ScrollOffsetController _scrollOffsetController = ScrollOffsetController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetListener _scrollOffsetListener = ScrollOffsetListener.create();
  late City _city;
  late List<Widget> _scrollWidgets;
  final double jumpToTextSize = 18;

  Widget _buildHeader(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Divider(color: ColorPalette.getDirectionDividerColor,height: 30),
          Text(
            "BEST THINGS TO DO IN ${_city.name}",
            textAlign: TextAlign.center,
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _city.details,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.normal,
              fontSize: 17,
            ),
          ),
          const Divider(color: ColorPalette.getDirectionDividerColor,height: 30),
        ],
      ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        // key: key,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: ColorPalette.primary,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            details,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.normal,
              color: ColorPalette.subTextColor,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map((item) => buildExploreItem(item))
        ],
      ),
    );
  }
  Widget _buildFooter(){
    return Column(
      children: [
        const CompactFeedbacksSection(),
        Column(
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
            const CompactFooter(),
          ],
        )
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
      _buildFooter()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   width: double.infinity,
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          //   decoration: BoxDecoration(
          //     color: ColorPalette.jumpToBgColor,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Wrap(
          //     runSpacing: 10,
          //     spacing: 15,
          //     alignment: WrapAlignment.center,
          //     children: [
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 1,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Top Attractions",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 2,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Concerts",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 3,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Food and Dining",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 4,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Nightlife",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 5,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Outdoor Adventures",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 6,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Sports",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () => _itemScrollController.scrollTo(
          //           index: 7,
          //           duration: const Duration(milliseconds: 500),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text(
          //           "Festivals",
          //           style: GoogleFonts.almarai(
          //             fontWeight: FontWeight.bold,
          //             fontSize: jumpToTextSize,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemCount: 9,
              itemBuilder: (context, index) => _scrollWidgets[index],
              itemScrollController: _itemScrollController,
              scrollOffsetController: _scrollOffsetController,
              itemPositionsListener: _itemPositionsListener,
              scrollOffsetListener: _scrollOffsetListener,
            ),
          ),
        ],
      ),
    );
  }
}
