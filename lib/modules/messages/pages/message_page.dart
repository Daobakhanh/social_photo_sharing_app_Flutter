import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network_newsfeed/models/user/user.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      appBar: AppBar(
        title: const Text('Message'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: const ElevatedButton(
        child: Text('hello'),
        onPressed: _readJsonFromAsset,
      ),
    );
  }
}

Future<void> _readJsonFromAsset() async {
  const assetKey = 'assets/data/mock/users.json';
  final json = await rootBundle.loadString(assetKey);
  final map = jsonDecode(json);
  // final result = map['results'];
  // final firstUser = result[0];
  // final gender = firstUser["gender"];
  // debugPrint('json: $gender');
  final results = Results.fromJson(map);
  final user0 = results.results;
  final test = user0[0];
  debugPrint('results: $test');
}
