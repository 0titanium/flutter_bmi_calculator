import 'package:flutter_bmi_calculator/presentation/main/main_screen.dart';
import 'package:flutter_bmi_calculator/presentation/result/result.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return MainScreen();
      },
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        return ResultScreen(
            height: double.parse(state.uri.queryParameters['height']!),
            weight: double.parse(state.uri.queryParameters['weight']!));
      },
    ),
  ],
);
