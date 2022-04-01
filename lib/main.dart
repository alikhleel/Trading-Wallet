import 'package:flutter/material.dart';

import 'presentation/router/app_router.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: "Wallet App",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
      theme: ThemeData(
        backgroundColor: const Color(0xFFF2F6FC),
        primarySwatch: Colors.blue,
        fontFamily: "Noto Sans Javanese",
        textTheme: TextTheme(
          bodyText2: textTheme.bodyText2
              ?.copyWith(fontFamily: "Poppins", color: Colors.white),
        ),
      ),
    );
  }
}
