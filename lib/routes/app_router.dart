import 'package:go_router/go_router.dart';
import 'package:hotel_booking_ui/screens/screens.dart';
import 'routes.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: ConstRouter.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      name: ConstRouter.details,
      builder: (context, state) => const DetailScreen(),
    ),
  ],
);
