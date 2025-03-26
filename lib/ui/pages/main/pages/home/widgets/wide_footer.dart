import 'package:ifyk_landing/ui/ui.dart';

class WideFooter extends StatelessWidget {
  final double topPadding;
  WideFooter({super.key, this.topPadding = 100});
  final subscribeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    const double maxWidth = 800;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth
        ? SizeUtil.screenWidth(context)
        : maxWidth;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: topPadding),
        ReadyToExploreWidget(screenWidth: screenWidth),
        height(50),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () => tabsRouter.setActiveIndex(0),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: PngAsset(
                                  'logo',
                                  width: 110,
                                ),
                              ),
                            ),
                            height(30),
                            Padding(
                              padding: EdgeInsets.only(right: screenWidth / 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                      context.pushRoute(
                                          const PrivacyPolicyRoute());
                                    },
                                    title: 'PRIVACY POLICY',
                                  ),
                                  MenuTextWidget(
                                    onTap: () async {
                                      await launchUrl(Uri.parse(
                                          'https://ifykevents.com/terms_condition'));
                                    },
                                    title: 'TERMS AND CONDITIONS',
                                  ),
                                  const SizedBox(width: 50),
                                ],
                              ),
                            ),
                            height(50),
                            const SocialButtonRowWidget(),
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: NewsLetterTextWidget()),
                    ],
                  ),
                ],
              ),
              height(20),
              const Divider(
                height: 20,
                thickness: .5,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'Copyright 2024, ifYK. All Rights Reserved',
                  style: GoogleFonts.delaGothicOne(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SocialButtonRowWidget extends StatelessWidget {
  const SocialButtonRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialButtonWidget(
            onTap: () async {
              await launchUrl(
                  Uri.parse('https://www.instagram.com/ifykevents/'));
            },
            icon: FontAwesomeIcons.instagram),
        SocialButtonWidget(
            onTap: () async {
              await launchUrl(Uri.parse('https://www.tiktok.com/@ifykevents'));
            },
            icon: FontAwesomeIcons.tiktok),
      ],
    );
  }
}

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Container(
          width: 31,
          height: 31,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Center(
              child: FaIcon(
            icon,
            size: 12,
            color: Colors.black,
          ))),
    );
  }
}

class MenuTextWidget extends StatelessWidget {
  const MenuTextWidget({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.delaGothicOne(fontSize: 12),
      ),
    );
  }
}
