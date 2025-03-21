import 'package:ifyk_landing/ui/ui.dart';

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
        const BlogsRoute(),
        const ContactRoute(),
      ],
      builder: (context, child, tabController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorPalette.backgroundColor,
          body: Column(
            children: [
              if (isCompact)
                CompactAppBar(tabsRouter: tabsRouter, routerKeys: _routerKeys)
              else
                WideAppBar(tabsRouter: tabsRouter, routerKeys: _routerKeys),
              Expanded(child: child),
            ],
          ),
        );
      },
    );
  }
}
