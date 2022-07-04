import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:social_network_newsfeed/models/chats/chat.dart';
import 'package:social_network_newsfeed/models/users/user.dart';

Future<Users> readJsonFromAssetUsers() async {
  const assetKey = 'assets/data/mock/users.json';
  final json = await rootBundle.loadString(assetKey);
  final map = jsonDecode(json);

  final results = Users.fromJson(map);
  // final users = results.results;
  return results;
}

Future<Chats> readJsonFromAssetChats() async {
  const assetKey = 'assets/data/mock/chats.json';
  final json = await rootBundle.loadString(assetKey);
  final map = jsonDecode(json);

  final results = Chats.fromJson(map);
  // final users = results.results;
  return results;
}