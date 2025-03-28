import 'ui/ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

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
      routerConfig: appRouter.config(),
    );
  }
}
