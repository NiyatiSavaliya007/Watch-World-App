import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watch_world_app/firebase_options.dart';
import 'package:watch_world_app/screens/custom_bottom_bar.dart';
//import 'package:watch_world_app/screens/login.dart';
import 'package:watch_world_app/screens/welcome.dart';
import 'app_provider.dart';
import 'constants/theme.dart';
//import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_services/firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Watch World',
        theme: themeData,
        home: StreamBuilder(
          stream: FirebaseAuthHelper.instance.getAuthChange,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const CustomBottomBar();
            }
            return const StartScreen();
          },
        ),
      ),
    );
  }
}
