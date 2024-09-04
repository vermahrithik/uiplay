import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/pages/detailspage.dart';
import 'package:uiplay/pages/home_page.dart';
import 'package:uiplay/pages/layouts.dart';
import 'package:uiplay/pages/ui_01_page.dart';
import 'package:uiplay/pages/ui_02_page.dart';
import 'package:uiplay/pages/ui_03_page.dart';
import 'package:uiplay/pages/ui_04_page.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class MyAppRouter{
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    errorPageBuilder: (context,state){
      return const MaterialPage(child: Scaffold(body: Center(child: Text('Error page'),),));
    },
    routes: [
      // Home Page Route :
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context,state){
          debugPrint('config page : HomePage');
          return MaterialPage(child: HomePage()); },
      ),
      // UI01 Page Route :
      GoRoute(
        name: MyAppRouteConstants.ui01RouteName,
        path: '/ui01',
        pageBuilder: (context,state){
          debugPrint('config page : ui 01 Page');
          return MaterialPage(child: Ui01Page()); },
      ),
      // UI02 Page Route :
      GoRoute(
        name: MyAppRouteConstants.ui02RouteName,
        path: '/ui02',
        pageBuilder: (context,state){
          debugPrint('config page : ui 02 Page');
          return MaterialPage(child: Ui02Page());
        },
        routes: [
          GoRoute(
            path: ':index',
            name: MyAppRouteConstants.detailsRouteName,
            pageBuilder: (context,state){
              final String index = state.pathParameters['index']!;
              debugPrint('print : $index');
              return MaterialPage(child: DetailsPage(index: index));
            }
          )
        ]
      ),
      // UI03 Page Route :
      GoRoute(
        name: MyAppRouteConstants.ui03RouteName,
        path: '/ui03',
        pageBuilder: (context,state){
          debugPrint('config page : ui 03 Page');
          return MaterialPage(child: Ui03Page());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.ui04RouteName,
        path: '/ui04',
        pageBuilder: (context,state){
          debugPrint('config page : ui 04 Page');
          return MaterialPage(child: Ui04Page());
        },
      ),
      // Layout Page Route :
      GoRoute(
        name: MyAppRouteConstants.layoutRouteName,
        path: '/layout',
        pageBuilder: (context,state){
          debugPrint('config page : Layout Page');
          return MaterialPage(child: LayoutPage());
        },
      ),
    ],
  );
}