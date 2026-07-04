import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';
import 'core/constants/app_constants.dart';
import 'core/theme/app_colors.dart'; // adjust path if different

bool get _isDesktop =>
    !kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = FlutterError.presentError;

  if (_isDesktop) {
    await _initializeDesktopWindow();
  }

  runApp(const WheeloApp());
}

Future<void> _initializeDesktopWindow() async {
  await windowManager.ensureInitialized();

  const options = WindowOptions(
    size: Size(1000, 800),
    minimumSize: Size(
      AppConstants.minWindowWidth,
      AppConstants.minWindowHeight,
    ),
    center: true,
    title: AppConstants.appName,
    backgroundColor: AppColors.navyDark,
    titleBarStyle: TitleBarStyle.normal,
  );

  windowManager.waitUntilReadyToShow(options, () async {
    await windowManager.show();
    await windowManager.focus();
    await windowManager.setBackgroundColor(AppColors.navyDark);
  });
}
