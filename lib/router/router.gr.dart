// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/foundation.dart' as _i10;
import 'package:ifyk_landing/ui/pages/main/main_page.dart' as _i7;
import 'package:ifyk_landing/ui/pages/main/pages/about/about_page.dart' as _i1;
import 'package:ifyk_landing/ui/pages/main/pages/blogs/blogs_details.dart'
    as _i2;
import 'package:ifyk_landing/ui/pages/main/pages/blogs/blogs_page.dart' as _i3;
import 'package:ifyk_landing/ui/pages/main/pages/contact/contact_page.dart'
    as _i4;
import 'package:ifyk_landing/ui/pages/main/pages/home/home_page.dart' as _i5;
import 'package:ifyk_landing/ui/pages/main/pages/home/home_router_page.dart'
    as _i6;
import 'package:ifyk_landing/ui/pages/privacy_policy/privacy_policy_page.dart'
    as _i8;
import 'package:ifyk_landing/ui/ui.dart' as _i11;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    BlogsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BlogsDetailsRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BlogsDetailsPage(
          key: args.key,
          image: args.image,
          desc: args.desc,
        ),
      );
    },
    BlogsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BlogsPage(),
      );
    },
    ContactRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContactPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    HomeRouterRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouterRouteArgs>(
          orElse: () => const HomeRouterRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.HomeRouterPage(
          key: args.key,
          routerKey: args.routerKey,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PrivacyPolicyPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i9.PageRouteInfo<void> {
  const AboutRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BlogsDetailsPage]
class BlogsDetailsRoute extends _i9.PageRouteInfo<BlogsDetailsRouteArgs> {
  BlogsDetailsRoute({
    _i10.Key? key,
    required String image,
    required String desc,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          BlogsDetailsRoute.name,
          args: BlogsDetailsRouteArgs(
            key: key,
            image: image,
            desc: desc,
          ),
          initialChildren: children,
        );

  static const String name = 'BlogsDetailsRoute';

  static const _i9.PageInfo<BlogsDetailsRouteArgs> page =
      _i9.PageInfo<BlogsDetailsRouteArgs>(name);
}

class BlogsDetailsRouteArgs {
  const BlogsDetailsRouteArgs({
    this.key,
    required this.image,
    required this.desc,
  });

  final _i10.Key? key;

  final String image;

  final String desc;

  @override
  String toString() {
    return 'BlogsDetailsRouteArgs{key: $key, image: $image, desc: $desc}';
  }
}

/// generated route for
/// [_i3.BlogsPage]
class BlogsRoute extends _i9.PageRouteInfo<void> {
  const BlogsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BlogsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ContactPage]
class ContactRoute extends _i9.PageRouteInfo<void> {
  const ContactRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeRouterPage]
class HomeRouterRoute extends _i9.PageRouteInfo<HomeRouterRouteArgs> {
  HomeRouterRoute({
    _i11.Key? key,
    _i11.GlobalKey<_i11.AutoRouterState>? routerKey,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeRouterRoute.name,
          args: HomeRouterRouteArgs(
            key: key,
            routerKey: routerKey,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRouterRoute';

  static const _i9.PageInfo<HomeRouterRouteArgs> page =
      _i9.PageInfo<HomeRouterRouteArgs>(name);
}

class HomeRouterRouteArgs {
  const HomeRouterRouteArgs({
    this.key,
    this.routerKey,
  });

  final _i11.Key? key;

  final _i11.GlobalKey<_i11.AutoRouterState>? routerKey;

  @override
  String toString() {
    return 'HomeRouterRouteArgs{key: $key, routerKey: $routerKey}';
  }
}

/// generated route for
/// [_i7.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i9.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
