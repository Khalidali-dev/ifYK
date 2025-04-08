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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "READY TO",
                    maxLines: 1,
                    minFontSize: 12,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.delaGothicOne(
                      fontWeight: FontWeight.w400,
                      fontSize: 37,
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
                      fontSize: 37,
                      color: ColorPalette.white,
                    ),
                  ),
                ],
              )),
          height(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 4),
            child: AutoSizeText(
              "See what’s happening near you. Download the app\nand start your adventure!",
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
          AutoSizeText(
            "Scan the QR Code to Download the App",
            maxLines: 2,
            minFontSize: 10,
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              fontWeight: FontWeight.normal,
              fontSize: 19,
              color: ColorPalette.white,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: screenWidth / 1.4,
              child: WideDownloadWidget(
                image: "qrcode",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
