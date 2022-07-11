import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network_newsfeed/modules/posts/blocs/chatty_bloc_observer.dart';
import 'modules/dashboard/pages/dashboard_page.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'modules/firebase/widgets/firebase_initializer.dart';

void main() async {
  // Bloc.observer = ChattyBlocObserver();

  // BlocOverrides.runZoned(() async {
  //   runApp(
  //     const FirebaseInitializer(
  //       child: MyApp(),
  //     ),
  //   );
  // }, blocObserver: ChattyBlocObserver());

  runApp(
    const FirebaseInitializer(
      child: MyApp(),
    ),
  );
}

//config fire using doc page
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // Add this

//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashBoardPage(),
    );
  }
}
