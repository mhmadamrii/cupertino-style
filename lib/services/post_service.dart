import 'dart:convert';
import 'package:cupertino_style/models/post.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String url =
      'https://jsonplaceholder.typicode.com/posts?_limit=5';

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
