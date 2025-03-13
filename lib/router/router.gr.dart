// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:ifyk_landing/ui/pages/city/city_page.dart' as _i2;
import 'package:ifyk_landing/ui/pages/main/main_page.dart' as _i6;
import 'package:ifyk_landing/ui/pages/main/pages/about/about_page.dart' as _i1;
import 'package:ifyk_landing/ui/pages/main/pages/contact/contact_page.dart'
    as _i3;
import 'package:ifyk_landing/ui/pages/main/pages/home/home_page.dart' as _i4;
import 'package:ifyk_landing/ui/pages/main/pages/home/home_router_page.dart'
    as _i5;
import 'package:ifyk_landing/ui/pages/privacy_policy/privacy_policy_page.dart'
    as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    CityRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CityRouteArgs>(
          orElse: () => CityRouteArgs(cityId: pathParams.getString('id')));
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CityPage(
          key: args.key,
          cityId: args.cityId,
        ),
      );
    },
    ContactRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ContactPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    HomeRouterRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouterRouteArgs>(
          orElse: () => const HomeRouterRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomeRouterPage(
          key: args.key,
          routerKey: args.routerKey,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PrivacyPolicyPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i8.PageRouteInfo<void> {
  const AboutRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CityPage]
class CityRoute extends _i8.PageRouteInfo<CityRouteArgs> {
  CityRoute({
    _i9.Key? key,
    required String cityId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CityRoute.name,
          args: CityRouteArgs(
            key: key,
            cityId: cityId,
          ),
          rawPathParams: {'id': cityId},
          initialChildren: children,
        );

  static const String name = 'CityRoute';

  static const _i8.PageInfo<CityRouteArgs> page =
      _i8.PageInfo<CityRouteArgs>(name);
}

class CityRouteArgs {
  const CityRouteArgs({
    this.key,
    required this.cityId,
  });

  final _i9.Key? key;

  final String cityId;

  @override
  String toString() {
    return 'CityRouteArgs{key: $key, cityId: $cityId}';
  }
}

/// generated route for
/// [_i3.ContactPage]
class ContactRoute extends _i8.PageRouteInfo<void> {
  const ContactRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeRouterPage]
class HomeRouterRoute extends _i8.PageRouteInfo<HomeRouterRouteArgs> {
  HomeRouterRoute({
    _i9.Key? key,
    _i9.GlobalKey<_i8.AutoRouterState>? routerKey,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          HomeRouterRoute.name,
          args: HomeRouterRouteArgs(
            key: key,
            routerKey: routerKey,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRouterRoute';

  static const _i8.PageInfo<HomeRouterRouteArgs> page =
      _i8.PageInfo<HomeRouterRouteArgs>(name);
}

class HomeRouterRouteArgs {
  const HomeRouterRouteArgs({
    this.key,
    this.routerKey,
  });

  final _i9.Key? key;

  final _i9.GlobalKey<_i8.AutoRouterState>? routerKey;

  @override
  String toString() {
    return 'HomeRouterRouteArgs{key: $key, routerKey: $routerKey}';
  }
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i8.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
