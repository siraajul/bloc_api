import 'dart:math';
import 'package:bloc_api/data/models/post_model.dart';
import 'package:bloc_api/data/repositories/post_repository.dart';
import 'package:bloc_api/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

 /* PostRepository postRepository = PostRepository();
  List<PostModel>? postModels = await postRepository.fetchPosts();
  print(postModels);*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home:const HomeScreen(),
    );
  }
}
