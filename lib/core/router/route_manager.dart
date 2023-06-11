import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nano_health_suite/application/auth/auth_bloc.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/core/router/routes.dart';
import 'package:nano_health_suite/injection.dart';
import 'package:nano_health_suite/presentation/auth/auth_page.dart';
import 'package:nano_health_suite/presentation/home/home_page.dart';

class RouterManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.authPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AuthBloc>(),
            child: const AuthPage(),
          ),
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeBloc>()..fetchEvent(),
            child: const HomePage(),
          ),
        );
      // case Routes.detailPage:
      //   return MaterialPageRoute(
      //     builder: (context) => const DetailPage(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Ups !'),
            ),
          ),
        );
    }
  }
}
