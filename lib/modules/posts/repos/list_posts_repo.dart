// import 'dart:io';

import 'package:dio/dio.dart';
import 'package:social_network_newsfeed/common/api/public.dart';
import 'package:social_network_newsfeed/modules/posts/models/post.dart';

// class ListPostsRepo {
//   final url = 'https://api.dofhunt1.200lab.io';
//   Future<List<Post>?> getPosts() async {
//     try {
//       final res =
//           await Dio(BaseOptions(baseUrl: url, connectTimeout: 3000)).get(
//         "/v1/post",
//         queryParameters: {'tags': "portrait"},
//         options: Options(
//           method: 'get',
//           headers: {
//             'Authorization': "Bearer " + userToken,
//             "Content-Type": "application/json"
//           },
//         ),
//       );
//       if (res.statusCode != 200) {
//         return null;
//       }

//       List data = res.data['data'];
//       return data.map((json) => Post.fromJson(json)).toList();
//     } catch (e) {
//       rethrow;
//     }
//   }
// }

class ListPostsRepo {
  Future<List<Post>?> getPosts() async {
    try {
      final res = await Dio(BaseOptions(
              baseUrl: 'https://api.dofhunt.200lab.io', connectTimeout: 3000))
          .get(
        "/v1/posts",
        queryParameters: {'tags': "portrait"},
        options: Options(method: 'get', headers: {
          'Authorization': "Bearer " + userToken,
          "Content-Type": "application/json"
        }),
      );

      if (res.statusCode != 200) {
        return null;
      }
      // print('Dio: $res');
      List data = res.data['data'];

      return data.map((json) => Post.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
