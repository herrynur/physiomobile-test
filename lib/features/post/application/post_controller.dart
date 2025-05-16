import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/features/post/application/post_var.dart';
import 'package:physiomobile_test/features/post/domain/repositories/post_repository.dart';
import 'package:physiomobile_test/features/post/local/local_data_service.dart';

class PostController extends GetxController {
  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  void getPosts() async {
    PostVar.isLoadingGetPosts = true;
    update();

    PostVar.posts.clear();

    //check internet connection
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      //get from local storage
      var posts = await LocalDataService().get();
      PostVar.posts.addAll(posts);

      //set if no connection
      PostVar.isHasConnection = false;

      PostVar.isLoadingGetPosts = false;
      update();
      return;
    }

    var posts = await PostRepository().getPostsAsync();
    PostVar.posts.addAll(posts);

    //save to local if success
    LocalDataService().write(posts);

    PostVar.isLoadingGetPosts = false;
    update();
  }

  Future<bool> isNoConnection() async {
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult.contains(ConnectivityResult.none);
  }
}