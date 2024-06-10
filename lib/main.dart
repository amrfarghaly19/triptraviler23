
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'package:untitled3445/pages/used/splash_screen.dart';
import 'package:untitled3445/prividerlanguage.dart';
import 'firebase_options.dart';

import 'localization/app_localization.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider<LanguageProvider>(
    create: (context) => LanguageProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  static _MyAppState? of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter App',
          localizationsDelegates: [
            AppLocalizationDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''), // Arabic
          ],
          locale: Locale(languageProvider.selectedLanguage.isNotEmpty ? languageProvider.selectedLanguage : 'en'),
          localeResolutionCallback: (locale, supportedLocales) {
            if (locale != null) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale.languageCode &&
                    supportedLocale.countryCode == locale.countryCode) {
                  Intl.defaultLocale = supportedLocale.languageCode;
                  if (supportedLocale.languageCode == 'ar') {
                    return Locale.fromSubtags(languageCode: 'ar', scriptCode: 'Arab');
                  }
                  return supportedLocale;
                }
              }
            }
            Intl.defaultLocale = 'en';
            return Locale('en', '');
          },
          builder: (context, child) {
            final appLocalization = AppLocalization.of(context);
            final textDirection = appLocalization.getAppDirection();

            return Directionality(
              textDirection: textDirection,
              child: child!,
            );
          },
          home:   SplashScreen(),
        );
      },
    );
  }
}
