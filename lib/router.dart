import 'package:auto_route/auto_route.dart';
import 'package:mailing_desktop/ui/pages/dashboard_page.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage, initial: true),

  ],
)
class $FlutterRouter {}
