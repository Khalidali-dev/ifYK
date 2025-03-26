import 'package:flutter/foundation.dart';
import 'package:ifyk_landing/ui/ui.dart';

class WideDownloadWidget extends ConsumerWidget {
  final bool isHeader;
  const WideDownloadWidget({super.key, this.isHeader = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double maxWidth = 1500;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth
        ? SizeUtil.screenWidth(context)
        : maxWidth;
    final isTablet = defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android;

    if (isTablet) {
      return Row(
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                top: screenWidth / 30,
                right: isHeader ? screenWidth / 8 : 0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  width(screenWidth / 100),
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
          ),
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
                  width: screenWidth / 6,
                ),
                width(screenWidth / 40),
                SizedBox(
                  width: screenWidth / 6,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://apps.apple.com/us/app/ifyk/id6468367267'));
                        },
                        child: const PngAsset(
                          'app_store',
                        ),
                      ),
                      height(20),
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://play.google.com/store/apps/details?id=com.ifyk'));
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
            height(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: screenWidth / 50,
                      right: screenWidth / 250,
                    ),
                    height: 2,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(fontSize: screenWidth / 80),
                ),
                Expanded(
                  child: Container(
                      height: 2,
                      margin: EdgeInsets.only(
                        right: screenWidth / 50,
                        left: screenWidth / 200,
                      ),
                      color: Colors.white),
                ),
              ],
            ),
            height(20),
            const Text("Enter your phone number to get a download link",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            height(20),
            Row(
              children: [
                Flexible(
                  flex: 6,
                  child: TextFormField(
                    // controller: _nameController,
                    validator: (value) =>
                        value?.isEmpty ?? true ? "Required" : null,
                    decoration: InputDecoration(
                        hintText: "Enter a phone number",
                        filled: true,
                        fillColor: ColorPalette.jumpToBgColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
                width(screenWidth / 70),
                Flexible(
                  flex: 6,
                  child: SizedBox(
                    height: 54,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPalette.primary,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Send Link',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 90,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            height(20),
          ],
        ),
      );
    }
  }
}
