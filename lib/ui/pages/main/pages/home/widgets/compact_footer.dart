import 'package:ifyk_landing/ui/ui.dart';

class CompactFooter extends StatelessWidget {
  const CompactFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/png/cut blob.png"))),
      child: Column(
        children: [
          height(40),
          size.width > 500
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "See what’s happening near you. Download the app\nand start your adventure!",
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: ColorPalette.white,
              ),
            ),
          ),
          height(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://apps.apple.com/us/app/ifyk/id6468367267'));
                    },
                    child: const PngAsset(
                      'app_store',
                    ),
                  ),
                ),
                width(15),
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://play.google.com/store/apps/details?id=com.ifyk'));
                    },
                    child: const PngAsset(
                      'google_play',
                    ),
                  ),
                ),
              ],
            ),
          ),
          height(100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              const Center(child: PngAsset('logo', width: 100)),
              height(40),
              MenuTextWidget(
                onTap: () => tabsRouter.setActiveIndex(1),
                title: 'ABOUT',
              ),
              MenuTextWidget(
                onTap: () => tabsRouter.setActiveIndex(3),
                title: 'CONTACT',
              ),
              MenuTextWidget(
                onTap: () {
                  context.pushRoute(const PrivacyPolicyRoute());
                },
                title: 'PRIVACY POLICY',
              ),
              MenuTextWidget(
                onTap: () {
                  launchUrl(
                      Uri.parse('https://ifykevents.com/terms_condition'));
                },
                title: 'TERMS AND CONDITIONS',
              ),
              height(30),
              const SocialButtonRowWidget(),
              height(30),
              NewsLetterTextWidget(
                isdesc: false,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: Text(
                    'Copyright 2024, ifYK. All Rights Reserved',
                    style: GoogleFonts.delaGothicOne(
                        fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
