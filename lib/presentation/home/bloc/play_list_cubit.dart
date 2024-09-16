import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/use_cases/songs/get_play_list_use_case.dart';
import 'package:spotify_app/presentation/home/bloc/play_list_states.dart';
import 'package:spotify_app/services_locator.dart';

class PlayListCubit extends Cubit<PlayListStates> {
  PlayListCubit() : super(PlayListInitial());

 Future<void> getPlayList() async {
    emit(PlayListLoading());
    var response = await sl<GetPlayListUseCase>().call();
    response.fold((error) => emit(PlayListFailure(errorMessage: error)),
        (success) => emit(PlayListSuccess(songs: success)));
  }
}