import 'package:ifyk_landing/ui/ui.dart';

class CompactFooter extends StatelessWidget {
  const CompactFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/png/cut blob.png"))),
      child: Column(
        children: [
          height(40),
          Text(
            "READY TO EXPLORE?",
            textAlign: TextAlign.center,
            style: GoogleFonts.unbounded(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: ColorPalette.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "See what’s happening near you. Download the app and start your adventure!",
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                fontWeight: FontWeight.normal,
                fontSize: 16,
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
                onTap: () => tabsRouter.setActiveIndex(2),
                title: 'CONTACT',
              ),
              MenuTextWidget(
                onTap: () {
                  tabsRouter.setActiveIndex(3);
                  context.pushRoute(const PrivacyPolicyRoute());
                },
                title: 'PRIVACY POLICY',
              ),
              MenuTextWidget(
                onTap: () {
                  tabsRouter.setActiveIndex(4);
                  launchUrl(
                      Uri.parse('https://ifykevents.com/terms_condition'));
                },
                title: 'TERMS AND CONDITIONS',
              ),
              height(30),
              const SocialButtonRowWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: Text(
                    'Copyright 2024, ifYK. All Rights Reserved',
                    style: GoogleFonts.delaGothicOne(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              NewsLetterTextWidget(
                isdesc: false,
              ),
              height(40)
            ],
          ),
        ],
      ),
    );
  }
}
