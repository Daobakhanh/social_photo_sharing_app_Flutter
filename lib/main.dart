// import 'package:flutter/material.dart';
// import 'modules/dashboard/pages/dashboard_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DashBoardPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const TextDemoPage());
}

class TextDemoPage extends StatefulWidget {
  const TextDemoPage({Key? key}) : super(key: key);

  @override
  State<TextDemoPage> createState() => _TextDemoPageState();
}

class _TextDemoPageState extends State<TextDemoPage> {
  var data = 'Hello Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TextDemoPage'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(data)),
            Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    data = 'Hello World';
                  });
                },
                child: const Text('Click me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
