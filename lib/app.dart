import 'package:flutter/material.dart';
import 'package:lamden/localization.dart';

import '../routes.dart';
import '../screens/account_screen.dart';
import '../screens/home_screen.dart';

class LamdenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        LamdenLocalizationsDelegate(),
      ],
      onGenerateTitle: (context) => LamdenLocalizations.of(context)!.appTitle,
      routes: {
        LamdenRoutes.home: (context) => HomeScreen(),
        LamdenRoutes.account: (context) => AccountScreen(),
        // LamdenRoutes.about: (context) => AboutScreen(),
        // LamdenRoutes.history: (context) => HistoryScreen(),
        // LamdenRoutes.login: (context) => LoginScreen(),
        // LamdenRoutes.notifications: (context) => NotificationScreen(),
        // LamdenRoutes.onboard: (context) => OnboardScreen(),
        // LamdenRoutes.settings: (context) => SettingsScreen(),
        // LamdenRoutes.signup: (context) => SignupScreen(),
        // LamdenRoutes.share: (context) => ShareScreen,
        // LamdenRoutes.support: (context) => SupportScreen(),
        // LamdenRoutes.termsAndConditions: (context) => TermsAndConditions(),
      },
    );
  }
}
