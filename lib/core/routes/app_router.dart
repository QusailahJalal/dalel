import 'package:dalel_app/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_veiw.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => const OnBoarding(),
  ),
]);