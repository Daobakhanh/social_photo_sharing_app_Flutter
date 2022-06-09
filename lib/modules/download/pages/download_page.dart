import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';
import 'package:dio/dio.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      appBar: AppBar(
        title: const Text('Download image page'),
      ),
      body: Container(
        color: AppColors.activeStatePink,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Downloading');
                _save();
              },
              child: const Icon(
                Icons.download,
                // size: ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void getHttp() async {
  try {
    var response = await Dio().get(
        'https://200lab-blog.imgix.net/2021/07/flutter-for-web-development.jpg');
    print(response);
  } catch (e) {
    print(e);
  }
}

void _save() async {
  try {
    var response = await Dio().get(
        "https://200lab-blog.imgix.net/2021/07/flutter-for-web-development.jpg",
        options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: "hello");
    print(result);
  } catch (e) {
    print(e);
  }
}
