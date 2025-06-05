import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'ui/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    usePathUrlStrategy();
  }

  runApp(
    UncontrolledProviderScope(
      container: await _configureContainer(),
      child: const MyApp(),
    ),
  );
}

Future<ProviderContainer> _configureContainer() async {
  return ProviderContainer(overrides: []);
}
