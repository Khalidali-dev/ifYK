import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/custom_text.dart';

class CompactAppBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  final List<GlobalKey<AutoRouterState>> routerKeys;
  const CompactAppBar(
      {super.key, required this.tabsRouter, required this.routerKeys});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    context.maybePop();
                                  },
                                  child: const PngAsset('menu_close'),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            GestureDetector(
                              onTap: () {
                                if (tabsRouter.activeIndex == 0) {
                                  routerKeys[0]
                                      .currentState
                                      ?.controller
                                      ?.popUntilRoot();
                                } else {
                                  tabsRouter.setActiveIndex(0);
                                }
                                context.maybePop();
                              },
                              child: CustomText(
                                label: 'Home',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                textColor: tabsRouter.activeIndex == 0
                                    ? Colors.white
                                    : ColorPalette.white.withOpacity(.6),
                              ),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                tabsRouter.setActiveIndex(1);
                                context.maybePop();
                              },
                              child: CustomText(
                                label: 'About Us',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                textColor: tabsRouter.activeIndex == 1
                                    ? Colors.white
                                    : ColorPalette.white.withOpacity(.6),
                              ),
                            ),
                            // const SizedBox(height: 20),
                            // CustomText(
                            //   label: 'Blog',
                            //   fontSize: 35,
                            //   fontWeight: FontWeight.bold,
                            //   textColor: ColorPalette.white.withOpacity(.6),
                            // ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                tabsRouter.setActiveIndex(2);
                                context.maybePop();
                              },
                              child: CustomText(
                                label: 'Contact',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                textColor: tabsRouter.activeIndex == 2
                                    ? Colors.white
                                    : ColorPalette.white.withOpacity(.6),
                              ),
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: PngAsset('download_the_app'),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
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
                                  const SizedBox(width: 15),
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
                            const SizedBox(height: 30)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: const PngAsset('app_bar_menu'),
          ),
          const Spacer(),
          const PngAsset(
            'logo',
            height: 25,
          ),

          // IconButton(
          //   onPressed: (){
          //
          //   },
          //   icon: const ImageIcon(AssetImage('assets/png/app_bar_menu.png')),
          // )
        ],
      ),
    );
  }
}
