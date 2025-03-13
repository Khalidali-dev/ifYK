import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/ui/pages/main/pages/about/widgets/compact/about_compact_content.dart';
import 'package:ifyk_landing/ui/pages/main/pages/about/widgets/wide/about_wide_content.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isCompact = SizeUtil.isCompact(context);
    final tabsRouter = AutoTabsRouter.of(context);
    if(isCompact){
      return const AboutCompactContent();
    } else {
      return AboutWideContent(tabsRouter: tabsRouter);
    }
  }
}
