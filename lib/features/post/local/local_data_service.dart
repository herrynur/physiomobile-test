import 'dart:convert';
import 'dart:developer';
import 'package:get_storage/get_storage.dart';
import 'package:physiomobile_test/features/post/domain/models/post_read_dto.dart';

class LocalDataService {
  static const String key = "post-key";
  final storage = GetStorage();

  Future<void> write(List<PostReadDto> input) async {
    try {
      //convert to json
      var postsMap = input.map((item) => item.toJson()).toList();
      var postsMapstring = jsonEncode(postsMap);

      await storage.write(key, postsMapstring);
    } catch (e) {
      log("failed write local data : $e");
    }
  }

  Future<List<PostReadDto>> get() async {
    try {
      var postsString = await storage.read(key);
      var posts = jsonDecode(postsString) as List<dynamic>;

      return posts.map((item) => PostReadDto.fromJson(item)).toList();
    } catch (e) {
      log("failed read local data : $e");
      return [];
    }
  }
}