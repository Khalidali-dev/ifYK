import 'package:ifyk_landing/ui/ui.dart';

@RoutePage()
class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return BlogsContent(tabsRouter: tabsRouter);
  }
}
