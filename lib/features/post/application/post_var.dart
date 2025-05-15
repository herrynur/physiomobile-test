import 'package:physiomobile_test/features/post/domain/models/post_read_dto.dart';

class PostVar {
  static bool isLoadingGetPosts = false;
  static bool isHasConnection = false;

  static List<PostReadDto> posts = [];
}