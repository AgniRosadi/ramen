import 'package:flutter/material.dart';
import 'package:ramen/helper/constant/settings.dart';
import 'package:ramen/helper/ui/app_color.dart';
import 'package:ramen/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoute.generateRoute,
      initialRoute: AppRoute.rMain,
      theme: ThemeData(
          primarySwatch: AppColor.mainTheme,
          primaryTextTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
              )),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _toPage(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).primaryColor,
        child: const Center(
          child: Image(image: AssetImage(Settings.assetsImagesDir + "logo.png"), width: 200),

        ));
  }
}

Future<void> _toPage(BuildContext context) async {
  Future.delayed(const Duration(milliseconds: 200), () async {
    Navigator.pushReplacementNamed(context, AppRoute.rHome);
  });
}

