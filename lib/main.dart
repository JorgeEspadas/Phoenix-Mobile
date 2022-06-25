import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phoenix_mobile/app/home/view.dart';
import 'package:phoenix_mobile/utils/device.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Device.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MainApp());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Device.getNavigatorKey,
      theme: ThemeData(fontFamily: 'Muli'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return PageRouteBuilder(
                pageBuilder: (context, __, ___) => const HomeView());
          default:
            return PageRouteBuilder(
                pageBuilder: (context, __, ___) => const HomeView());
        }
      },
    );
  }
}
