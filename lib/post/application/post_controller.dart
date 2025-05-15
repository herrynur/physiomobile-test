import 'package:get/get.dart';
import 'package:physiomobile_test/post/application/post_var.dart';
import 'package:physiomobile_test/post/domain/repositories/post_repository.dart';

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

    var posts = await PostRepository().getPostsAsync();
    PostVar.posts.addAll(posts);

    PostVar.isLoadingGetPosts = false;
    update();
  }
}