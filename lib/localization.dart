import 'dart:async';

import 'package:flutter/material.dart';

class LamdenLocalizations {
  static LamdenLocalizations? of(BuildContext context) {
    return Localizations.of<LamdenLocalizations>(context, LamdenLocalizations);
  }

  String get appTitle => 'Lamden Wallet';
}

class LamdenLocalizationsDelegate
    extends LocalizationsDelegate<LamdenLocalizations> {
  @override
  Future<LamdenLocalizations> load(Locale locale) =>
      Future(() => LamdenLocalizations());

  @override
  bool shouldReload(LamdenLocalizationsDelegate old) => false;

  @override
  bool isSupported(Locale locale) =>
      locale.languageCode.toLowerCase().contains('en');
}
