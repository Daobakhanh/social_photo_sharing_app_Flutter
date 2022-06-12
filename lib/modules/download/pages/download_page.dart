import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage>
    with DownloadImgMixinStateful {
  late TextEditingController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String urlString = 'https://randomuser.me/api/';
    const String urlImage = "https://randomuser.me/api/portraits/men/75.jpg";
    return Scaffold(
      backgroundColor: AppColors.light,
      appBar: AppBar(
        backgroundColor: AppColors.dark,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          // add more IconButton
        ],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(children: [
        const LinearProgressIndicator(
          color: AppColors.activeStateBlue,
          value: 0.5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
                labelText: 'Enter Url',
                icon: Icon(Icons.image),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: AppColors.dark))),
          ),
        ),
        ElevatedButton(
          child: const Icon(Icons.download),
          onPressed: () {
            downloadImg('hihi', urlImage);
          },
        )
      ]),
    );
  }
}

Future<void> _downloadImage() async {
  try {
    const String urlString = 'https://randomuser.me/api/';
    final res = await Dio().get(urlString);
    print(res.data);
  } catch (e) {
    print(e);
  }
}

mixin DownloadImgMixinStateful<T extends StatefulWidget> on State<T> {
  Future<void> downloadImg(String name, String url) async {
    try {
      final response = await Dio().get(
        url,
        options: Options(responseType: ResponseType.bytes),
      );
      final result = await ImageGallerySaver.saveImage(
          Uint8List.fromList(response.data),
          quality: 80,
          name: name);
      if (result != null) {
        toast('Downloaded');
      }
    } catch (e) {
      print('e = $e');
      return;
    }
  }
}
