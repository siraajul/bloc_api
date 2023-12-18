part of 'post_cubit.dart';

@immutable
abstract class PostState {}


class PostLoadingState extends PostState{}

class PostLoadedState extends PostState{
  late final List<PostModel> posts;
  PostLoadedState(this.posts);
}

class PostErrorState extends PostState{
  final String error;
  PostErrorState(this.error);
}
