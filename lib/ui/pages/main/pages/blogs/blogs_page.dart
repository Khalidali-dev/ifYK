import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/ui/pages/main/pages/blogs/widgets/compact/blogs_content.dart';

@RoutePage()
class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return BlogsContent(tabsRouter: tabsRouter);
  }
}
