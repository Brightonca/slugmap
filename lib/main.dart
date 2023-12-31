import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:slugmap/myHomePage.dart';
import 'package:slugmap/pages/login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Slug Map',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 251, 33)),
        useMaterial3: true,
      ),
      //home: MyHomePage(title: 'Slug Map'),
      home: const LoginPage(),
    );
  }
}
