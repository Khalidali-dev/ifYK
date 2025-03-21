import 'package:ifyk_landing/ui/ui.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isCompact = SizeUtil.isCompact(context);
    final tabsRouter = AutoTabsRouter.of(context);
    if (isCompact) {
      return AboutContent(tabsRouter: tabsRouter);
    } else {
      return AboutContent(tabsRouter: tabsRouter);
    }
  }
}
