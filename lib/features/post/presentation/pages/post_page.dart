import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';
import 'package:physiomobile_test/features/post/application/post_controller.dart';
import 'package:physiomobile_test/features/post/application/post_var.dart';
import 'package:physiomobile_test/features/post/presentation/loading/post_loading.dart';
import 'package:physiomobile_test/features/post/presentation/widget/post_list_widget.dart';

class PostPage extends StatelessWidget {
  PostPage({super.key});

  final PostController _postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          title: BodyText.small(
            text: "Post List",
            weight: FontWeight.bold
          ),
          actions: [
            GetBuilder<PostController>(
              builder: (_) {
                return BodyText.extraSmall(
                  text: PostVar.isHasConnection ? "Pull to refresh" : "No Internet Connection",
                  color: PostVar.isHasConnection ? Colors.black : Colors.red,
                  margin: EdgeInsets.only(right: SizeValue.size10)
                );
              },
            )
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            _postController.getPosts();
            if (await _postController.isNoConnection()) {
                const snackBar = SnackBar(content: Text('No Internet Connection, showing data from local storage'));
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }
          },
          child: GetBuilder<PostController>(
            init: _postController,
            initState: (state) async {
              if (await _postController.isNoConnection()) {
                const snackBar = SnackBar(content: Text('No Internet Connection, showing data from local storage'));
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }
            },
            builder: (_) {
              if (PostVar.isLoadingGetPosts) {
                return PostLoading.postLoading();
              } else {
                return ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: SizeValue.size4, horizontal: SizeValue.size10),
                  itemCount: PostVar.posts.length,
                  itemBuilder: (context, index) {
                    var data = PostVar.posts[index];
                    return PostListWidget(
                      id: data.id,
                      userId: data.userId,
                      title: data.title ?? "-",
                      body: data.body ?? "-",
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}