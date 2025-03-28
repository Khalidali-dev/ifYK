import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/snap_scroll_widget.dart';
import 'package:ifyk_landing/ui/ui.dart';

class HomeWideContent extends StatefulWidget {
  final TabsRouter tabsRouter;
  const HomeWideContent({super.key, required this.tabsRouter});

  @override
  State<HomeWideContent> createState() => _HomeWideContentState();
}

class _HomeWideContentState extends State<HomeWideContent> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    const double maxWidth = 1500;
    final screenWidth = SizeUtil.screenWidth(context) < maxWidth
        ? SizeUtil.screenWidth(context)
        : maxWidth;
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      controller: _scrollController,
      child: Center(
        child: Column(
          children: [
            WideWrapper(
              child: Column(
                children: [
                  size.width > 500
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: screenWidth / 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: screenWidth / 8),
                                    const PngAsset('all_events_one_place'),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: screenWidth / 30,
                                      ),
                                      child: const WideDownloadWidget(
                                          isHeader: true),
                                    ),
                                    SizedBox(height: screenWidth / 15)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 80),
                                child: PngAsset(
                                  'main_images',
                                  alignment: Alignment.topRight,
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 30, left: 30, right: 30),
                              child: PngAsset(
                                'all_events_one_place_compact',
                              ),
                            ),
                            Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      PngAsset(
                                        height: 30,
                                        'party',
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: PngAsset(
                                          height: 30,
                                          'fire',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, right: 100, top: 20),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: GestureDetector(
                                          onTap: () {
                                            launchUrl(Uri.parse(
                                                'https://apps.apple.com/us/app/ifyk/id6468367267'));
                                          },
                                          child: Transform.scale(
                                            scale: 1.6,
                                            child: const PngAsset(
                                              'app_store',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 50),
                                      Flexible(
                                        child: GestureDetector(
                                          onTap: () {
                                            launchUrl(Uri.parse(
                                                'https://play.google.com/store/apps/details?id=com.ifyk'));
                                          },
                                          child: Transform.scale(
                                              scale: 1.6,
                                              child: const PngAsset(
                                                  'google_play')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            height(20),
                            const PngAsset(
                              'main_images_compact',
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                            ),
                          ],
                        ),
                  size.width > 500 ? height(0) : height(50),
                  const SnapScrollEffectWidget(),
                  size.width > 500 ? height(50) : height(0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
                    child: PngAsset(
                      size.width > 500
                          ? 'going_out_made_easy'
                          : 'going_out_made_easy_compact',
                      fit: size.width > 500 ? BoxFit.contain : BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: screenWidth / 10),
                  size.width > 500
                      ? SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 1200),
                                  child: const PngAsset(
                                    'swipe_scroll_discover',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : const Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 70),
                          child: PngAsset(
                            'swipe_scroll_discover_compact',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                        ),
                ],
              ),
            ),
            height(20),
            const WideFeedbacksSection(),
            size.width > 500
                ? WideWrapper(
                    maxWidth: 1200,
                    child: WideFooter(),
                  )
                : const CompactFooter(),
          ],
        ),
      ),
    );
  }
}
