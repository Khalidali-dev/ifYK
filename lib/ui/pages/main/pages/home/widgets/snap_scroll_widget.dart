import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:ifyk_landing/ui/ui.dart';

class SnapScrollEffectWidget extends StatefulWidget {
  const SnapScrollEffectWidget({super.key});

  @override
  State<SnapScrollEffectWidget> createState() => _SnapScrollEffectWidgetState();
}

class _SnapScrollEffectWidgetState extends State<SnapScrollEffectWidget> {
  late PageController _pageController;
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  final List<String> pageTitles = ["SEARCH FOR ", "INTERACTIVE ", "EASY "];
  final List<String> pageTitles2 = ["EVENTS WITH AI", "MAP VIEW", "FILTERS"];
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      int newPage = _pageController.page!.round();
      if (_currentPage.value != newPage) {
        _currentPage.value = newPage;
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        size.width > 500
            ? const SizedBox.shrink()
            : ValueListenableBuilder<int>(
                valueListenable: _currentPage,
                builder: (context, value, child) {
                  return VerticalHeadingWidget(
                      title1: pageTitles[value],
                      title2: pageTitles2[value],
                      fontSize1: 24,
                      fontSize2: 24,
                      weight1: FontWeight.w400,
                      weight2: FontWeight.w400,
                      color1: ColorPalette.primary,
                      color2: ColorPalette.white);
                },
              ),
        size.width > 500
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * .5,
                      height: size.height * .8,
                      child: DeviceFrame(
                        device: Devices.ios.iPhone14Pro,
                        isFrameVisible: true,
                        orientation: Orientation.portrait,
                        screen: PageView.builder(
                          controller: _pageController,
                          scrollDirection: Axis.vertical,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: PngAsset(
                                "smart_search_compact${index + 1}",
                                width: size.width,
                                height: size.height,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    ValueListenableBuilder<int>(
                      valueListenable: _currentPage,
                      builder: (context, value, child) {
                        return VerticalHeadingWidget(
                            title1: pageTitles[value],
                            title2: pageTitles2[value],
                            fontSize1: 24,
                            fontSize2: 24,
                            weight1: FontWeight.w400,
                            weight2: FontWeight.w400,
                            color1: ColorPalette.primary,
                            color2: ColorPalette.white);
                      },
                    ),
                  ],
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                child: DeviceFrame(
                  device: Devices.ios.iPhone14Pro,
                  isFrameVisible: true,
                  orientation: Orientation.portrait,
                  screen: PageView.builder(
                    controller: _pageController,
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: PngAsset(
                          "smart_search_compact${index + 1}",
                          width: size.width,
                          height: size.height,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
      ],
    );
  }
}
