import 'package:auto_route/auto_route.dart';
import 'package:lekce6/screen1.dart';
import 'package:lekce6/screen2.dart';
import 'package:lekce6/screen3.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Route1.page, initial: true),
        AutoRoute(page: Route2.page),
        AutoRoute(page: Route3.page),
      ];
}
