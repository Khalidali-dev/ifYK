import '../ui/ui.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, path: '/', children: [
          AutoRoute(
              maintainState: false,
              path: 'home',
              page: HomeRouterRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: HomeRoute.page,
                ),
              ]),
          AutoRoute(
            maintainState: false,
            path: 'about',
            page: AboutRoute.page,
          ),
          AutoRoute(
            maintainState: false,
            path: 'blogs',
            page: BlogsRoute.page,
          ),
          AutoRoute(
            maintainState: false,
            path: 'contact',
            page: ContactRoute.page,
          ),
        ]),
        AutoRoute(
          path: '/privacy-policy',
          page: PrivacyPolicyRoute.page,
        ),
        // AutoRoute(
        //   path: '/blogs-details',
        //   page: BlogsDetailsRoute.page,
        // ),
      ];
}
