import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/router/router.gr.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class CompactFooter extends StatelessWidget {
  const CompactFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return Stack(
      children: [
        const Positioned.fill(
          child: PngAsset(
            'footer_glow',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 40),
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
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: (){
                              launchUrl(Uri.parse('https://apps.apple.com/us/app/ifyk/id6468367267'));
                            },
                            child: const PngAsset(
                              'app_store',
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Flexible(
                          child: GestureDetector(
                            onTap: (){
                              launchUrl(Uri.parse('https://play.google.com/store/apps/details?id=com.ifyk'));
                            },
                            child: const PngAsset(
                              'google_play',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Container(
                    // margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                      color: ColorPalette.black
                    ),
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(child: PngAsset('logo', width: 100)),
                        const SizedBox(height: 40),
                        GestureDetector(
                          onTap: (){
                            tabsRouter.setActiveIndex(1);
                          },
                          child: Text(
                            'ABOUT',
                            style: GoogleFonts.unbounded(fontSize: 20),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: (){
                            tabsRouter.setActiveIndex(2);
                          },
                          child: Text(
                            'CONTACT',
                            style: GoogleFonts.unbounded(fontSize: 20),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: (){
                            context.pushRoute(const PrivacyPolicyRoute());
                          },
                          child: Text(
                            'PRIVACY POLICY',
                            style: GoogleFonts.unbounded(fontSize: 20),
                          ),
                        ),
                        // const SizedBox(height: 20),
                        // Text(
                        //   'TERMS AND CONDITIONS',
                        //   style: GoogleFonts.unbounded(fontSize: 20),
                        // ),
                        // const SizedBox(height: 30),
                        // const PngAsset(
                        //   'socials_compact',
                        //   width: 270,
                        // ),
                        // const SizedBox(height: 30),
                        // const PngAsset(
                        //   'newsletter_compact',
                        // ),
                        const SizedBox(height: 30),
                        Center(
                          child: Text(
                            'Copyright 2024, ifYK. All Rights Reserved',
                            style: GoogleFonts.unbounded(fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
