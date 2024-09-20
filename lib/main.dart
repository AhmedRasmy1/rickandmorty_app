// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rickandmorty_app/app_router.dart';

void main() {
  runApp(RickAndMortyApp(
    appRouter: AppRouter(),
  ));
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({
    super.key,
    required this.appRouter,
  });
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
