import 'package:abdo_ghazaly/models/posts_model.dart';
import 'package:abdo_ghazaly/network/dio_helper.dart';
import 'package:abdo_ghazaly/screens/home_screen/cubit/home_states.dart';
import 'package:abdo_ghazaly/shared/app_end_pints.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeStateInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<PostModel> posts = [];

  getData(){
    emit(HomeStateLoading());
    print('========================================');
    print('Get Data triggered');
    print('========================================');

    DioHelper.postData(path: kPosts).then((value) {

      posts = (value.data as List).map((json) => PostModel.fromJson(json)).toList();

      print('========================================');
      print(posts.first.body);
      print('========================================');
      emit(HomeStateSuccess());
    }).catchError((onError){
      print('========================================');
      print(onError);
      print('========================================');
      emit(HomeStateError(onError.toString()));
    });


  }

}
