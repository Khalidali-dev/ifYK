import 'package:ifyk_landing/ui/ui.dart';

class ReadyToExploreWidget extends StatelessWidget {
  const ReadyToExploreWidget({
    super.key,
    required this.screenWidth,
  });

  final dynamic screenWidth;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 170),
      decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage("assets/png/footer_glow.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 3.8),
            child: size.width > 500
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "READY TO",
                        maxLines: 1,
                        minFontSize: 12,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.delaGothicOne(
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                          color: ColorPalette.primary,
                        ),
                      ),
                      AutoSizeText(
                        " EXPLORE?",
                        maxLines: 1,
                        minFontSize: 12,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.delaGothicOne(
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                          color: ColorPalette.white,
                        ),
                      ),
                    ],
                  )
                : AutoSizeText(
                    "READY TO EXPLORE?",
                    maxLines: 1,
                    minFontSize: 12,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.delaGothicOne(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: ColorPalette.primary,
                    ),
                  ),
          ),
          height(10),
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
