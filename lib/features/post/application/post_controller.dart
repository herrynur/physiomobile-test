import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
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
    if (!await InternetConnection().hasInternetAccess) {
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
}