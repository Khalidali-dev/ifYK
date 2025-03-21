import 'ui/ui.dart';

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
