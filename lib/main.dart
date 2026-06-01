import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:portfolio/features/home_page/ui/home_page.dart';

import 'l10n/app_locale.dart';
import 'shared/widgets/error_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  FlutterLocalization.instance.init(
    mapLocales: [
      const MapLocale('en', AppLocale.en),
      const MapLocale('uk', AppLocale.uk),
    ],
    initLanguageCode: 'en',
  );

  ErrorWidget.builder = (details) => ErrorPage(details: details);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterLocalization.instance.onTranslatedLanguage = (_) => setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valeriia Radzivilo Portfolio',
      locale: FlutterLocalization.instance.currentLocale,
      supportedLocales: FlutterLocalization.instance.supportedLocales,
      localizationsDelegates:
          FlutterLocalization.instance.localizationsDelegates,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
