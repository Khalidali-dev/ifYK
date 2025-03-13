import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/compact/home_compact_content.dart';
import 'package:ifyk_landing/ui/pages/main/pages/home/widgets/wide/home_wide_content.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final isCompact = SizeUtil.isCompact(context);
    print(isCompact);
    if (isCompact) {
      return const HomeCompactContent();
    } else {
      return HomeWideContent(tabsRouter: tabsRouter);
    }
  }
}
