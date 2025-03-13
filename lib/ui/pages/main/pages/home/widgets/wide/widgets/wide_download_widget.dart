import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';
import 'package:ifyk_landing/ui/widgets/png_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class WideDownloadWidget extends ConsumerWidget {
  final bool isHeader;
  const WideDownloadWidget({super.key, this.isHeader = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double maxWidth = 1500;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth ? SizeUtil.screenWidth(context) : maxWidth;
    final isTablet = defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android;
    if(isTablet){
      return Row(
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                top: screenWidth/30,
                right: isHeader ? screenWidth/8 : 0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: screenWidth/30),
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
                  SizedBox(width: screenWidth/100),
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
          ),
          // SizedBox(width: screenWidth/100),
          // PngAsset('fire', width: screenWidth/35),
          // SizedBox(width: screenWidth/20),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PngAsset(
                  'app_store_qr',
                  width: screenWidth/6 ,
                ),
                SizedBox(width: screenWidth/40),
                SizedBox(
                  width: screenWidth/6,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          launchUrl(Uri.parse('https://apps.apple.com/us/app/ifyk/id6468367267'));
                        },
                        child: const PngAsset(
                          'app_store',
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: (){
                          launchUrl(Uri.parse('https://play.google.com/store/apps/details?id=com.ifyk'));
                        },
                        child: const PngAsset(
                          'google_play',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: screenWidth/30,
                      right: screenWidth/200,
                    ),
                    height: 2,
                    color: Colors.white,
                  ),
                ),
                Text("OR", style: TextStyle(fontSize: screenWidth/80),),
                Expanded(
                  child: Container(
                      height: 2,
                      margin: EdgeInsets.only(
                        right: screenWidth/30,
                        left: screenWidth/200,
                      ),
                      color: Colors.white
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text("Enter your phone number to get a download link", textAlign: TextAlign.center, style: TextStyle(fontSize: screenWidth/68)),
            const SizedBox(height: 30),
            SizedBox(
              width: screenWidth/2.75,
              child: Row(
                children: [
                  Flexible(
                    flex: 7,
                    child: TextFormField(
                      // controller: _nameController,
                      validator: (value) => value?.isEmpty ?? true ? "Required" : null,
                      decoration: InputDecoration(
                          hintText: "Enter a phone number",
                          filled: true,
                          fillColor: ColorPalette.jumpToBgColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth/70),
                  Flexible(
                    flex: 4,
                    child: SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.primary,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                            )
                          ,
                        ),
                        child: Text(
                          'Send Link',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth/90,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: screenWidth/30),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
