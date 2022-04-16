import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';
import 'package:smart_tracker/core/navigation/navigation.dart';
import 'package:smart_tracker/core/provider/theme_provider.dart';
import 'package:smart_tracker/res/res.dart';

import 'core/services/storage/storage_service.dart';
import 'di/locator.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    setUpServiceLocator();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.red));

    WidgetsFlutterBinding.ensureInitialized();

    final StorageService storageService = getIt<StorageService>();
    await storageService.init();

    runApp(MyApp(
      storageService: storageService,
    ));
  }, (e, _) => throw e);
}

class MyApp extends StatelessWidget {
  final StorageService storageService;
  const MyApp({
    Key? key,
    required this.storageService,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => ThemeProvider(storageService),
              ),
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routeInformationParser: const RoutemasterParser(),
              routerDelegate: RoutemasterDelegate(
                routesBuilder: (context) => AppRouter.routes,
              ),
              title: 'Flutter Demo',
              theme: AppThemes.main(primaryColor: AppColors.light100),
              themeMode: ThemeMode.light,
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
