import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_network_newsfeed/modules/posts/models/post.dart';
import 'package:social_network_newsfeed/modules/posts/repos/list_posts_repo.dart';

// class ListPostsRxDartBloc {
//   final _postsController = BehaviorSubject<List<Post>?>.seeded(const []);
//   Stream<List<Post>?> get postsStream => _postsController.stream;

//   Future<void> getPosts() async {
//     try {
//       final res = await ListPostsRepo().getPosts();

//       if (res != null) {
//         _postsController.sink.add(res);
//       }
//     } catch (e) {
//       _postsController.sink.addError("Cannot fetch list posts right now!!");
//     }
//   }
// }

class ListPostsRxDart {
  final _postsCtrl = BehaviorSubject<List<Post>?>.seeded(const []);
  Stream<List<Post>?> get postsStream => _postsCtrl.stream;

  Future<void> getPosts() async {
    try {
      final res = await ListPostsRepo().getPosts();
      // print(res);
      if (res != null) {
        _postsCtrl.sink.add(res);
      }
    } catch (e) {
      _postsCtrl.sink.addError('Cannot fetch list posts right now!!!');
    }
  }
}

class ListPostsBlocCubit extends Cubit<List<Post>?> {
  // final _postsCtrl = BehaviorSubject<List<Post>?>.seeded(const []);
  // Stream<List<Post>?> get postsStream => _postsCtrl.stream;

  //mac dinh khoi tao ban dau la null
  ListPostsBlocCubit() : super(null);
  Future<void> getPosts() async {
    try {
      final res = await ListPostsRepo().getPosts();
      // print(res);
      if (res != null) {
        emit(res);
        // _postsCtrl.sink.add(res);
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      emit([]);
      // _postsCtrl.sink.addError('Cannot fetch list posts right now!!!');
    }
  }
}

class ListPostsBloc extends Bloc<String, ListPostsState> {
  // final _postsCtrl = BehaviorSubject<List<Post>?>.seeded(const []);
  // Stream<List<Post>?> get postsStream => _postsCtrl.stream;

  //mac dinh khoi tao ban dau la null
  ListPostsBloc() : super(ListPostsState()) {
    //event: gia tri truyen vao
    //emit: callback emit
    on((event, emit) async {
      switch (event) {
        case 'getPosts':
          try {
            final res = await ListPostsRepo().getPosts();
            // print(res);
            if (res != null) {
              emit(ListPostsState(posts: res));
              // _postsCtrl.sink.add(res);
            }
          } catch (e) {
            // ignore: avoid_print
            print(e);
            emit(ListPostsState(error: e));
            // _postsCtrl.sink.addError('Cannot fetch list posts right now!!!');
          }
          break;
        default:
      }
    });
  }
}

class ListPostsState {
  final Object? error;
  final List<Post>? posts;

  ListPostsState({this.error, this.posts});
}
