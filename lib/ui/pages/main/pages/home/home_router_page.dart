import 'package:ifyk_landing/ui/ui.dart';

@RoutePage()
class HomeRouterPage extends StatelessWidget {
  final GlobalKey<AutoRouterState>? routerKey;
  const HomeRouterPage({super.key, this.routerKey});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(key: routerKey);
  }
}
