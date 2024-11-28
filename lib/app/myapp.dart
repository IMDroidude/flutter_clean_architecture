
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/route/routes.dart';
import 'package:flutter_clean_architecture/theme/theme_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///AppConfig.context = context;
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),// hide keyboard on focus change
          child: MaterialApp.router(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
            ///restorationScopeId: 'app',
            theme: ThemeManager.themeData, // Move this here
            routerConfig: AppRouter.router,
            // routeInformationParser: AppRouter.router.routeInformationParser,
            // routeInformationProvider: AppRouter.router.routeInformationProvider,
            // routerDelegate: AppRouter.router.routerDelegate,
          ),
        );
      },
    );
  }
}
