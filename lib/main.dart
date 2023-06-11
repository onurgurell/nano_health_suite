import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/core/router/route_manager.dart';
import 'package:nano_health_suite/injection.dart';
import 'package:nano_health_suite/presentation/auth/auth_page.dart';

void main() async {
  runApp(const MyApp());
  await setupInjection();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<HomeBloc>()..add(HomeGetProductEvent()),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RouterManager.generateRoute,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const AuthPage(),
            ));
      },
    );
  }
}
