import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/models/photo_model.dart';
import '../domain/repositories/i_good_look_repository.dart';

part 'photo_bloc.freezed.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final IGoodLookRepository goodLookRepository;
  PhotoBloc({this.goodLookRepository}) : super(const ProgressIndicator());

  @override
  Stream<PhotoState> mapEventToState(
    PhotoEvent event,
  ) async* {
    yield* event.map(
      eventPhoto: (e) async* {
        yield const ProgressIndicator();
        final photos = await goodLookRepository.getPhotoList();
        // log(photos.toString());
        yield StatePhoto(photos);
      },
    );
  }
}

@freezed
abstract class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.eventPhoto() = EventPhoto;
}

@freezed
abstract class PhotoState with _$PhotoState {
  const factory PhotoState.progressIndicator() = ProgressIndicator;
  const factory PhotoState.statePhoto(List<PhotoModel> photoModels) =
      StatePhoto;
}
