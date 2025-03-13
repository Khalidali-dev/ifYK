import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';
import 'package:ifyk_landing/ui/widgets/bounce_button.dart';
import 'package:ifyk_landing/ui/widgets/custom_text.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';

class WideAppBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  final List<GlobalKey<AutoRouterState>> routerKeys;
  const WideAppBar({super.key, required this.tabsRouter, required this.routerKeys});

  @override
  Widget build(BuildContext context) {
    final screenWidth = SizeUtil.screenWidth(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 1000),
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: screenWidth/20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: screenWidth/50,
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
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: ColorPalette.appbarBorderColor, width: 1.5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BounceButton(
                  onTap: (){
                    if(tabsRouter.activeIndex == 0){
                      routerKeys[0].currentState?.controller?.popUntilRoot();
                    } else {
                      tabsRouter.setActiveIndex(0);
                    }
                  },
                  child: CustomText(
                    label: 'Home',
                    fontSize: 14,
                    textColor: ColorPalette.white.withOpacity(tabsRouter.activeIndex == 0 ? 1 :.6),
                  ),
                ),
                SizedBox(width: screenWidth/30),
                BounceButton(
                  onTap: ()=> tabsRouter.setActiveIndex(1),
                  child: CustomText(
                    label: 'About Us',
                    fontSize: 14,
                    textColor: ColorPalette.white.withOpacity(tabsRouter.activeIndex == 1 ? 1 :.6),
                  ),
                ),
                // SizedBox(width: screenWidth/30),
                // CustomText(label: 'Blog', fontSize: 14, textColor: ColorPalette.white.withOpacity(.6)),
                SizedBox(width: screenWidth/30),
                BounceButton(
                  onTap: ()=> tabsRouter.setActiveIndex(2),
                  child: CustomText(label: 'Contact', fontSize: 14, textColor: ColorPalette.white.withOpacity(tabsRouter.activeIndex == 2 ? 1 :.6))),
                SizedBox(width: screenWidth/30),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black
                  ),
                  child: const Text('Get The App', style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
