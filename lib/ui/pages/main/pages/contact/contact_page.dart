import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:ifyk_landing/ui/pages/main/pages/contact/widgets/compact/contact_compact_content.dart';
import 'package:ifyk_landing/ui/pages/main/pages/contact/widgets/wide/contact_wide_content.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

@RoutePage()
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final isCompact = SizeUtil.isCompact(context);
    if(isCompact){
      return const ContactCompactContent();
    } else {
      return ContactWideContent(tabsRouter: tabsRouter);
    }
  }
}
