import 'package:dio/dio.dart';
import 'package:physiomobile_test/post/domain/models/post_read_dto.dart';
import 'package:physiomobile_test/post/domain/repositories/i_post_repository.dart';

class PostRepository extends IPostRepository {
  final dio = Dio();

  @override
  Future<List<PostReadDto>> getPostsAsync() async {
    const url = "https://jsonplaceholder.typicode.com/posts";

    return dio.get(
      url,
    ).then((value) async {
      if (value.statusCode == 200) {
        List<dynamic> jsonData = value.data;
        List<PostReadDto> datas = jsonData.map((item) => PostReadDto.fromJson(item as Map<String, dynamic>)).toList();
        return datas;
      } else {
        return [];
      }
    });
  }
}