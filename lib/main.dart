import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Hive.registerAdapter<>(Adapter());
  // Hive.registerAdapter<>(Adapter());
  // Hive.registerAdapter<>(Adapter());
  // Hive.registerAdapter<>(Adapter());

  runApp(
    ProviderScope(
      child: LamdenApp(),
    ),
  );
}
