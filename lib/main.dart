import 'package:flutter/material.dart';
import 'package:flutter_a2z/local_storage_config/shared_preferences_config/flutter_a2z_shared_preferences.dart';
import 'package:flutter_a2z/local_storage_config/sqlite_config/flutter_a2z_database.dart';
import 'package:flutter_a2z/models/user_location.dart';
import 'package:flutter_a2z/routing/router.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/home/home_screen.dart';
import 'package:flutter_a2z/screens/undefined_screen/undefined_screen.dart';
import 'package:flutter_a2z/service/location_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterA2zSharedPreferences.initializePreferences();
  FlutterA2zDatabase.instance.database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
      initialData: UserLocation(longitude: 0.0, latitude: 0.0, speed: 0.0),
      create: (context) => LocationService().locationStream,
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          title: 'Flutter a2z',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            //visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: generateRoute,
          initialRoute: loginScreenRoute,
          onUnknownRoute: (settings) => MaterialPageRoute(
            builder: (context) => const UndefinedScreen(),
          ),
          home: const HomeScreen(),
        ),
        designSize: const Size(360, 640),
      ),
    );
  }
}
