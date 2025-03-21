import 'package:ifyk_landing/ui/ui.dart';

class WideAppBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  final List<GlobalKey<AutoRouterState>> routerKeys;
  const WideAppBar(
      {super.key, required this.tabsRouter, required this.routerKeys});

  @override
  Widget build(BuildContext context) {
    final screenWidth = SizeUtil.screenWidth(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 1000),
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: screenWidth / 50,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: PngAsset(
                'logo',
              ),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(right: screenWidth/20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: .1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: ColorPalette.appbarBorderColor, width: 1.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BounceButton(
                  onTap: () {
                    if (tabsRouter.activeIndex == 0) {
                      routerKeys[0].currentState?.controller?.popUntilRoot();
                    } else {
                      tabsRouter.setActiveIndex(0);
                    }
                  },
                  child: CustomText(
                    label: 'Home',
                    fontSize: 14,
                    textColor: ColorPalette.white.withValues(
                        alpha: tabsRouter.activeIndex == 0 ? 1 : .6),
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                BounceButton(
                  onTap: () => tabsRouter.setActiveIndex(1),
                  child: CustomText(
                    label: 'About Us',
                    fontSize: 14,
                    textColor: ColorPalette.white.withValues(
                        alpha: tabsRouter.activeIndex == 1 ? 1 : .6),
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                BounceButton(
                  onTap: () => tabsRouter.setActiveIndex(2),
                  child: CustomText(
                    label: 'Blog',
                    fontSize: 14,
                    textColor: ColorPalette.white.withValues(
                        alpha: tabsRouter.activeIndex == 2 ? 1 : .6),
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                BounceButton(
                    onTap: () => tabsRouter.setActiveIndex(3),
                    child: CustomText(
                        label: 'Contact',
                        fontSize: 14,
                        textColor: ColorPalette.white.withValues(
                            alpha: tabsRouter.activeIndex == 3 ? 1 : .6))),
                SizedBox(width: screenWidth / 30),
                ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'https://apps.apple.com/us/app/ifyk/id6468367267'));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black),
                  child: const Text(
                    'Get The App',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
