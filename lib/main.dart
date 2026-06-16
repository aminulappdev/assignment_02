
import 'package:assignment_02/custom_widget.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'text_field.dart';
import 'stack.dart';
import 'grid_view_builder_practice.dart';
import 'card_settings_screen.dart';
void main() async {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const CardSettingsScreen(),
    );
  }
}
