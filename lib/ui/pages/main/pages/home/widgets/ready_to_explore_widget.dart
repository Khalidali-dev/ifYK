
import 'package:ifyk_landing/ui/ui.dart';

class ReadyToExploreWidget extends StatelessWidget {
  const ReadyToExploreWidget({
    super.key,
    required this.screenWidth,
  });

  final dynamic screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/png/footer_glow.png"))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 3.8),
            child: AutoSizeText(
              "READY TO EXPLORE?",
              maxLines: 1,
              minFontSize: 12,
              textAlign: TextAlign.center,
              style: GoogleFonts.unbounded(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: ColorPalette.primary,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 3.6),
            child: AutoSizeText(
              "See what’s happening near you. Download the app and start your adventure!",
              maxLines: 2,
              minFontSize: 10,
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                fontWeight: FontWeight.normal,
                fontSize: 23,
                color: ColorPalette.white,
              ),
            ),
          ),
          SizedBox(height: screenWidth / 50),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: screenWidth / 1.4,
              child: const WideDownloadWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
