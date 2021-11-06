import 'package:flutter/material.dart';

import '../localization.dart';
import '../routes.dart';
import '../screens/account_screen.dart';
import '../screens/home_screen.dart';
import 'screens/add_account_screen.dart';
import 'screens/signin_screen.dart';

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
        LamdenRoutes.addAccount: (context) => AddAccountScreen(),
        // LamdenRoutes.about: (context) => AboutScreen(),
        // LamdenRoutes.history: (context) => HistoryScreen(),
        // LamdenRoutes.login: (context) => LoginScreen(),
        // LamdenRoutes.notifications: (context) => NotificationScreen(),
        // LamdenRoutes.onboard: (context) => OnboardScreen(),
        // LamdenRoutes.settings: (context) => SettingsScreen(),
        LamdenRoutes.signin: (context) => SigninScreen(),
        // LamdenRoutes.share: (context) => ShareScreen,
        // LamdenRoutes.support: (context) => SupportScreen(),
        // LamdenRoutes.termsAndConditions: (context) => TermsAndConditions(),
      },
    );
  }
}
