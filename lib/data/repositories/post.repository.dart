import 'dart:convert';

import 'package:corso_flutter_2024/models/post.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  Future<List<Post>> posts() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        Iterable data = jsonDecode(response.body);
        return data.map((x) => Post.fromJson(x)).toList();
      } else {
        throw Exception('Failed to load posts.');
      }
    } catch (e) {
      rethrow;
    }
  }
}
