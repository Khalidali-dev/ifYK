import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';
import 'package:ifyk_landing/router/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// assets\png\image.png
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      title: "ifYK",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        navigationBarTheme:
            const NavigationBarThemeData(backgroundColor: Colors.black),
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(
                  bodyColor: ColorPalette.white,
                  displayColor: ColorPalette.white,
                )),
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(primary: ColorPalette.primary),
      ),
      // scrollBehavior: CustomScrollBehavior(),
      routerConfig: appRouter.config(),
    );
  }
}
