import 'package:go_router/go_router.dart';
import 'package:news_app_news_impl/core/routing/routes.dart';
import '../../features/home_screen/home_screen.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: Routes.homeScreen,
    routes: [
      GoRoute(
        name: Routes.homeScreen,
        path: Routes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),



    ]
  );
}