import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const listScreen = <String>[
  'Home Page',
  'Commom Widgets Page',
  'Sign In Page',
  'Onboarding Page'
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final paddingSafeAreaSize = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;
    const double marginCard = 10;
    //define height
    final heightSmallCardCustom = (size.height - paddingSafeAreaSize) / 5;
    final heightSmallCardDefault =
        (size.height - heightSmallCardCustom - paddingSafeAreaSize) / 3;

    //define width
    final widthQuarterOfScreen = (size.width - marginCard) / 4;

    return Scaffold(
      appBar: AppBar(
        title: const Text('All String'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const CardScreen(title: 'khanh');
            }),
      ),
    );
  }
}

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key, required String title}) : super(key: key);

  final String title = '';
  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        color: Colors.blue,
        height: 20,
        width: 100,
        child: Text(widget.title),
        decoration: Box,
      ),
    );
  }
}
