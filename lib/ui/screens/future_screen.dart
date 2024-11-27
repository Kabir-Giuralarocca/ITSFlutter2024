import 'package:corso_flutter_2024/data/repositories/post.repository.dart';
import 'package:corso_flutter_2024/models/post.dart';
import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  late PostRepository postRepository;
  late Future<List<Post>> items;

  @override
  void initState() {
    super.initState();
    postRepository = PostRepository();
    items = postRepository.posts();
  }

  void _refreshPosts() {
    setState(() {
      items = postRepository.posts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future')),
      body: CustomScrollView(shrinkWrap: true, slivers: [
        FutureBuilder(
          future: items,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Loader
              return SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
            }
            if (snapshot.hasError) {
              return SliverFillRemaining(child: Center(child: Text('${snapshot.error}')));
            }
            return SliverPadding(
              padding: EdgeInsets.all(16),
              sliver: SliverList.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  Post? item = snapshot.data?[index];
                  return ListTile(
                    leading: Text('${item?.id ?? ''}'),
                    title: Text(item?.title ?? ''),
                    subtitle: Text(item?.body ?? ''),
                  );
                },
              ),
            );
          },
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshPosts,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
