import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter router= MyAppRouter.router;
  runApp(MyApp(routerr:router));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.routerr});
  final GoRouter routerr;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: routerr.routeInformationParser,
      routerDelegate: routerr.routerDelegate,
      routeInformationProvider: routerr.routeInformationProvider,
    );
  }
}
