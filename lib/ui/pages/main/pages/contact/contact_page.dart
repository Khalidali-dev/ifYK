import 'package:ifyk_landing/ui/ui.dart';

@RoutePage()
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final isCompact = SizeUtil.isCompact(context);
    if (isCompact) {
      return ContactContent(tabsRouter: tabsRouter);
    } else {
      return ContactContent(tabsRouter: tabsRouter);
    }
  }
}
