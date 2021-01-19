import 'package:flutter/material.dart';
import 'package:maraei_elshamalia/splashScreen.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:print_color/print_color.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
    apiKeyGoogle: '<Key>', // NOT YET TESTED
  );
  runApp(LocalizedApp(child: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(50, 52, 51,1)
      ),
      home: SplashScreen(),
      localizationsDelegates: translator.delegates,
      locale: translator.locale,
      supportedLocales: translator.locals(),
    );
  }
}
