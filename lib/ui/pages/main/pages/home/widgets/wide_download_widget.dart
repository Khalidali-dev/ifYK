import 'package:flutter/foundation.dart';
import 'package:ifyk_landing/ui/ui.dart';

class WideDownloadWidget extends ConsumerWidget {
  final bool isHeader;
  final String image;
  WideDownloadWidget({super.key, this.isHeader = false, required this.image});
  TextEditingController numberController = TextEditingController();
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
        child: PngAsset(
          image,
          width: isHeader ? 516 : 380,
          height: isHeader ? 419 : 380,
        ),
      );
    }
  }
}
