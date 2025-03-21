import 'package:ifyk_landing/ui/ui.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final isCompact = SizeUtil.isCompact(context);
    if (isCompact) {
      return HomeWideContent(tabsRouter: tabsRouter);
    } else {
      return HomeWideContent(tabsRouter: tabsRouter);
    }
  }
}
