import 'package:auto_route/auto_route.dart';
import 'package:ifyk_landing/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      children: [
        AutoRoute(
          maintainState: false,
          path: 'home',
          page: HomeRouterRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: HomeRoute.page,
            ),
            AutoRoute(
              path: ':id',
              page: CityRoute.page,
            )
          ]
        ),
        AutoRoute(
          maintainState: false,
          path: 'about',
          page: AboutRoute.page,
        ),
        AutoRoute(
          maintainState: false,
          path: 'contact',
          page: ContactRoute.page,
        ),
      ]
    ),
    AutoRoute(
      path: '/privacy-policy',
      page: PrivacyPolicyRoute.page,
    ),
    // RedirectRoute(path: '*', redirectTo: '/')
  ];
}