import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network_newsfeed/modules/posts/blocs/list_posts_bloc.dart';
import 'package:social_network_newsfeed/modules/posts/models/post.dart';
import 'package:social_network_newsfeed/modules/posts/widgets/post_item_widget.dart';

class ListPostsPage extends StatefulWidget {
  const ListPostsPage({Key? key}) : super(key: key);

  @override
  State<ListPostsPage> createState() => _ListPostsPageState();
}

// class _ListPostsPageState extends State<ListPostsPage> {
//   final _postsBloc = ListPostsRxDart();
//   @override
//   void initState() {
//     super.initState();
//     _postsBloc.getPosts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Posts RxDart'),
//       ),
//       body: StreamBuilder<List<Post>?>(
//         stream: _postsBloc.postsStream,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final posts = snapshot.data;
//             return ListView.builder(
//                 itemBuilder: (_, int index) {
//                   final item = posts![index];
//                   return PostItem(
//                     height: 200,
//                     url: item.images?.first.url ?? '',
//                     description: item.description!,
//                   );
//                 },
//                 itemCount: posts?.length ?? 0);
//           }
//           if (snapshot.hasError) {
//             return Center(
//               child: Text(
//                 snapshot.error.toString(),
//               ),
//             );
//           }

//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }

class _ListPostsPageState extends State<ListPostsPage> {
  // final _postsBloc = ListPostsBlocCubit();
  final _postsBloc = ListPostsBloc();

  @override
  void initState() {
    super.initState();
    // _postsBloc.getPosts();
    _postsBloc.add('getPosts');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListPostState flutter_bloc Bloc'),
      ),
      // body: StreamBuilder<List<Post>?>(
      // body: BlocBuilder<ListPostsBlocCubit, List<Post>?>(
      body: BlocBuilder<ListPostsBloc, ListPostsState>(
        // datatype1: khai bao bloc do la bloc nao
        // datatype2: bloc đó chứa dữ liệu kiểu gì
        bloc: _postsBloc,
        builder: (context, state) {
          final posts = state.posts;
          final error = state.error;
          if (posts != null) {
            // final posts = snapshot.data;
            return ListView.builder(
                itemBuilder: (_, int index) {
                  //khong can check null, da check o tren
                  final item = posts[index];
                  return PostItem(
                    height: 200,
                    url: item.images?.first.url ?? '',
                    description: item.description!,
                  );
                },
                itemCount: posts.length);
          }
          if (error != null) {
            return Center(
              child: Text(
                error.toString(),
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
