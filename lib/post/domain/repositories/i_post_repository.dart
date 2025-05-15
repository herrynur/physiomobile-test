import 'package:physiomobile_test/post/domain/models/post_read_dto.dart';

abstract class IPostRepository {
  Future<List<PostReadDto>> getPostsAsync();
}