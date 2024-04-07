import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:recipes/configuration/app_module_di.dart';
import 'package:recipes/routing/routes.dart';
import 'package:recipes/translations/messages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  registerAppModuleDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.upToDown,
      initialRoute: Routes.home,
      getPages: Routes.pages,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, primary: Colors.black),
        useMaterial3: true,
      ),
      translations: Messages(),
      locale: const Locale('en', 'US'),
    );
  }
}
