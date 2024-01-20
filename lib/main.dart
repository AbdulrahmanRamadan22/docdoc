import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:flutter/services.dart';

import 'core/routing/app_router.dart';
import 'doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness:
        Brightness.dark, //<-- For Android SEE HERE (dark icons)
  ));
  setupGetIt();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
