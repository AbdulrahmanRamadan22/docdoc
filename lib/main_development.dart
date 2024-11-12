import 'dart:developer';

import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/shared_pref_helper.dart';
import 'package:flutter/services.dart';

import 'core/routing/app_router.dart';
import 'doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();

  // print(
  //     "******************************SharedPrefKeysMain ${SharedPrefKeys.userToken}");
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness:
        Brightness.dark, //<-- For Android SEE HERE (dark icons)
  ));
  setupGetIt();

  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  // checkIfLoggedInUser();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

// checkIfLoggedInUser() async {
//   String? userToken = await SharedPrefHelper.getString("token");
//   if (!userToken.isNullOrEmpty()) {
//     isLoggedInUser = true;
//   } else {
//     isLoggedInUser = false;
//   }
// }
