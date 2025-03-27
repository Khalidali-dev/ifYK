// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:ifyk_landing/ui/pages/main/main_page.dart' as _i6;
import 'package:ifyk_landing/ui/pages/main/pages/about/about_page.dart' as _i1;
import 'package:ifyk_landing/ui/pages/main/pages/blogs/blogs_page.dart' as _i2;
import 'package:ifyk_landing/ui/pages/main/pages/contact/contact_page.dart'
    as _i3;
import 'package:ifyk_landing/ui/pages/main/pages/home/home_page.dart' as _i4;
import 'package:ifyk_landing/ui/pages/main/pages/home/home_router_page.dart'
    as _i5;
import 'package:ifyk_landing/ui/pages/privacy_policy/privacy_policy_page.dart'
    as _i7;
import 'package:ifyk_landing/ui/ui.dart' as _i9;

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i8.PageRouteInfo<void> {
  const AboutRoute({List<_i8.PageRouteInfo>? children})
    : super(AboutRoute.name, initialChildren: children);

  static const String name = 'AboutRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutPage();
    },
  );
}

/// generated route for
/// [_i2.BlogsPage]
class BlogsRoute extends _i8.PageRouteInfo<void> {
  const BlogsRoute({List<_i8.PageRouteInfo>? children})
    : super(BlogsRoute.name, initialChildren: children);

  static const String name = 'BlogsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.BlogsPage();
    },
  );
}

/// generated route for
/// [_i3.ContactPage]
class ContactRoute extends _i8.PageRouteInfo<void> {
  const ContactRoute({List<_i8.PageRouteInfo>? children})
    : super(ContactRoute.name, initialChildren: children);

  static const String name = 'ContactRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ContactPage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.HomeRouterPage]
class HomeRouterRoute extends _i8.PageRouteInfo<HomeRouterRouteArgs> {
  HomeRouterRoute({
    _i9.Key? key,
    _i9.GlobalKey<_i9.AutoRouterState>? routerKey,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         HomeRouterRoute.name,
         args: HomeRouterRouteArgs(key: key, routerKey: routerKey),
         initialChildren: children,
       );

  static const String name = 'HomeRouterRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouterRouteArgs>(
        orElse: () => const HomeRouterRouteArgs(),
      );
      return _i5.HomeRouterPage(key: args.key, routerKey: args.routerKey);
    },
  );
}

class HomeRouterRouteArgs {
  const HomeRouterRouteArgs({this.key, this.routerKey});

  final _i9.Key? key;

  final _i9.GlobalKey<_i9.AutoRouterState>? routerKey;

  @override
  String toString() {
    return 'HomeRouterRouteArgs{key: $key, routerKey: $routerKey}';
  }
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainPage();
    },
  );
}

/// generated route for
/// [_i7.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i8.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i8.PageRouteInfo>? children})
    : super(PrivacyPolicyRoute.name, initialChildren: children);

  static const String name = 'PrivacyPolicyRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.PrivacyPolicyPage();
    },
  );
}
