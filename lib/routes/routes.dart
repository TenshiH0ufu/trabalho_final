import 'package:go_router/go_router.dart';
import 'package:trabalho_final/screens/authentication_screen.dart';
import 'package:trabalho_final/screens/complete_order.dart';
import 'package:trabalho_final/screens/home_screen.dart';
import 'package:trabalho_final/screens/order_screen.dart';
import 'package:trabalho_final/screens/welcome_screen.dart';

final routes = GoRouter(
  initialLocation: "/welcome",
  routes: [
    GoRoute(
      path: "/welcome",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/authentication",
      builder: (context, state) => const AuthenticationScreen(),
    ),
    GoRoute(
        path: "/home",
        builder: (context, state) {
          final nome = state.extra as String? ?? "No Name";
          return HomeScreen(nome: nome);
        }),
    GoRoute(
      path: "/complete",
      builder: (context, state) {
        final Map<String, dynamic> params = state.extra as Map<String, dynamic>;
        final String image = params['image'] ?? 'No Image';
        final String nome = params['nome'] ?? 'No Name';
        final double valor = params['valor'] ?? 0.0;

        return CompleteOrder(
          image: image,
          nome: nome,
          valor: valor,
        );
      },
    ),
    GoRoute(
      path: "/order",
      builder: (context, state) => const OrderScreen(),
    ),
  ],
);
