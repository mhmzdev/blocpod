import 'package:bloced_archi/router/router.dart';
import 'package:bloced_archi/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:provider/provider.dart';

// bloc-imports-start
import 'cubits/favorite/cubit.dart';
import 'cubits/book/cubit.dart';

// bloc-imports-end

// provider-imports-start
import 'providers/app.dart';

// provider-imports-end

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // provider-initiate-start
        ChangeNotifierProvider(create: (_) => AppState()),

        // provider-initiate-end

        // bloc-initiate-start
        BlocProvider(create: (_) => FavoriteCubit()),
        BlocProvider(create: (_) => BookCubit()),

        // bloc-initiate-end
      ],
      child: MaterialApp(
        title: 'BlocPod',
        navigatorObservers: [
          NavigationHistoryObserver(),
        ],
        routes: appRoutes,
        initialRoute: AppRoutes.login,
        onGenerateRoute: onGenerateRoutes,
      ),
    );
  }
}
