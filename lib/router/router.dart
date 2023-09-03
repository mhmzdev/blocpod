import 'package:bloced_archi/ui/screens/favorite/favorite.dart';
import 'package:bloced_archi/ui/screens/search/search.dart';
import 'package:bloced_archi/ui/screens/profile/profile.dart';
import 'package:bloced_archi/ui/screens/home/home.dart';
import 'package:bloced_archi/ui/screens/login/login.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

final appRoutes = {
  AppRoutes.login: (_) => const LoginScreen(),
};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.home:
      return _FadeRoute(
        child: const HomeScreen(),
        settings: settings,
      );
    case AppRoutes.favorite:
      return _FadeRoute(
        child: const FavoriteScreen(),
        settings: settings,
      );
    case AppRoutes.search:
      return _FadeRoute(
        child: const SearchScreen(),
        settings: settings,
      );
    case AppRoutes.profile:
      return _FadeRoute(
        child: const ProfileScreen(),
        settings: settings,
      );

    default:
      return null;
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  @override
  final RouteSettings settings;

  _FadeRoute({
    required this.child,
    required this.settings,
  }) : super(
          settings: settings,
          pageBuilder: (context, ani1, ani2) => child,
          transitionsBuilder: (context, ani1, ani2, child) {
            return FadeTransition(
              opacity: ani1,
              child: child,
            );
          },
        );
}
