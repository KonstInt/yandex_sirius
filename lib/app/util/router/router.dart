import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/screens/map.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/screens/map_main.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/login/login_page.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/signup_page.dart';

class RoutingService {
  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/login',
    routes: <GoRoute>[
      GoRoute(
          name: '/',
          path: '/',
          builder: (context, state) => const MapMain(),
          routes: [
            GoRoute(
                path: 'login',
                builder: (context, state) => const LoginPage(),
                routes: [
                  GoRoute(
                    path: 'sign_up',
                    builder: (context, state) => const SignUpPage(),
                  ),
                ]),
            GoRoute(
              path: 'map',
              builder: (context, state) => const MapPage(),
            ),
          ]),
    ],

    // redirect to the login page if the user is not logged in
    redirect: (context, state) async {
      final bool loggedIn = FirebaseAuth.instance.currentUser != null;
      final bool signingUp = state.matchedLocation == '/login/sign_up';
      if (!loggedIn) {
        if (signingUp) {
          return null;
        }
        else{
          return '/login';
        }
      }
      return null;
    },
  );
}
