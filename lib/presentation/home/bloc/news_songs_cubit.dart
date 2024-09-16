import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/use_cases/songs/get_news_song_use_case.dart';
import 'package:spotify_app/presentation/home/bloc/news_songs_states.dart';
import 'package:spotify_app/services_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsStates> {
  NewsSongsCubit() : super(NewsSongsInitial());

 Future<void> getNewsSongs() async {
    emit(NewsSongsLoading());
    var response = await sl<GetNewsSongsUseCase>().call();
    response.fold((error) => emit(NewsSongsFailure(errorMessage: error)),
        (success) => emit(NewsSongsSuccess(songs: success)));
  }
}
