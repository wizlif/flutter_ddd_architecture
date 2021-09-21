import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/injection.dart';
import 'package:ddd/presentation/routes/router.gr.dart';
import 'package:ddd/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: MaterialApp.router(
        title: 'Notes',
        routerDelegate: AutoRouterDelegate(_appRouter),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
      ),
    );
  }
}
