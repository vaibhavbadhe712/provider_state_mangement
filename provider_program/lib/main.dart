import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_program/app_config.dart';
import 'package:provider_program/constant/apiendpoint.dart';
import 'package:provider_program/model/api_base_model.dart';
import 'package:provider_program/provider_controller/button_controller.dart';
import 'package:provider_program/provider_controller/counter.dart';
import 'package:provider_program/provider_controller/routs_controller.dart';
import 'package:provider_program/provider_controller/toggle.dart';
import 'package:provider_program/utils/local_preference.dart';
import 'package:provider_program/utils/routs/app_routs.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

 
void main({String? env}) async{
    WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageUtils.init();
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

    final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final appConfig = await AppConfig().forEnvironment(env);

  runApp(
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => Toggle()),
        ChangeNotifierProvider(create: (_) => routesController()),
        ChangeNotifierProvider(create: (_) => ButtonController()),

      ],
      child: MyApp(
         config: appConfig,
    sharedPreferences: sharedPreferences,
      ),
    ),
  );
}

late ApiEndPoints apiEndpoints;

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.config,
    required this.sharedPreferences,
  });

  final ApiBaseModel config;
  final SharedPreferences sharedPreferences;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    apiEndpoints = ApiEndPoints(apiBaseModel: widget.config);
    super.initState();
  }

  final appRoutes = Routes(); 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'People Management',
      routeInformationParser: appRoutes.router.routeInformationParser,
      routeInformationProvider: appRoutes.router.routeInformationProvider,
      routerDelegate: appRoutes.router.routerDelegate,
      builder: (_, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 360, name: MOBILE),
          const Breakpoint(start: 361, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}

