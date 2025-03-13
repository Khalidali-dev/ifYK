import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/router/router.gr.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/compact_app_bar.dart';
import 'package:ifyk_landing/ui/pages/main/widgets/wide_app_bar.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final _routerKeys = [
    GlobalKey<AutoRouterState>(),
    GlobalKey<AutoRouterState>(),
    GlobalKey<AutoRouterState>(),
  ];


  @override
  Widget build(BuildContext context) {
    final isCompact = SizeUtil.isCompact(context);
    return AutoTabsRouter.tabBar(
      animatePageTransition: false,
      physics: const NeverScrollableScrollPhysics(),
      routes: [
        HomeRouterRoute(routerKey: _routerKeys[0]),
        const AboutRoute(),
        const ContactRoute(),
      ],
      builder: (context, child, tabController){
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorPalette.backgroundColor,
          body: Column(
            children: [
              if(isCompact)CompactAppBar(tabsRouter: tabsRouter, routerKeys: _routerKeys)
              else WideAppBar(tabsRouter: tabsRouter, routerKeys: _routerKeys),
              Expanded(child: child),
            ],
          ),
        );
      },
    );
  }
}
