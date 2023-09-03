import 'package:bloced_archi/ui/screens/favorite/favorite.dart';
import 'package:bloced_archi/ui/screens/search/search.dart';
import 'package:bloced_archi/ui/screens/profile/profile.dart';
import 'package:bloced_archi/ui/screens/home/home.dart';
import 'package:bloced_archi/ui/screens/login/login.dart';

import 'routes.dart';

final appRoutes = {
  AppRoutes.favorite: (_) => const FavoriteScreen(),
  AppRoutes.search: (_) => const SearchScreen(),
  AppRoutes.profile: (_) => const ProfileScreen(),
  AppRoutes.home: (_) => const HomeScreen(),
  AppRoutes.login: (_) => const LoginScreen(),
};
