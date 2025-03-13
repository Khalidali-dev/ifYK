import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeRouterPage extends StatelessWidget {
  final GlobalKey<AutoRouterState>? routerKey;
  const HomeRouterPage({super.key, this.routerKey});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(key: routerKey);
  }
}
