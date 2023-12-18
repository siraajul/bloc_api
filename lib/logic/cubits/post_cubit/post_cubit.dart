import 'package:bloc/bloc.dart';
import 'package:bloc_api/data/repositories/post_repository.dart';
import 'package:meta/meta.dart';

import '../../../data/models/post_model.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostLoadingState()){
    fetchPosts();
  }

  final PostRepository _postRepository = PostRepository();
  void fetchPosts() async{
    try{
     List<PostModel>? posts = await _postRepository.fetchPosts();
     emit(PostLoadedState(posts!));
    }
    catch(ex){
      emit(PostErrorState(ex.toString()));
    }
  }
}
