
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AuthService.dart';

import 'login.dart';
import 'firebase_api.dart';
late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
 app = await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  auth = FirebaseAuth.instanceFor(app: app);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: HealthApp(),
    ),
  );
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      home: LoginPage() ,
    );
  }
}
