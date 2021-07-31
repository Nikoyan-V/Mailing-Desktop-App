// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'ui/pages/dashboard_page.dart' as _i3;

class FlutterRouter extends _i1.RootStackRouter {
  FlutterRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DashboardRouteArgs>();
          return _i3.DashboardPage(key: args.key, title: args.title);
        })
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [_i1.RouteConfig(DashboardRoute.name, path: '/')];
}

class DashboardRoute extends _i1.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({_i2.Key? key, required String title})
      : super(name,
            path: '/', args: DashboardRouteArgs(key: key, title: title));

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.key, required this.title});

  final _i2.Key? key;

  final String title;
}
