import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:good_look/data/models/photo_model.dart';
import 'package:good_look/data/models/todo_model.dart';
import 'package:good_look/domain/repositories/i_good_look_repository.dart';

part 'photo_bloc.freezed.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final IGoodLookRepository goodLookRepository;
  PhotoBloc({this.goodLookRepository}) : super(ProgressIndicator());

  @override
  Stream<PhotoState> mapEventToState(
    PhotoEvent event,
  ) async* {
    yield* event.map(
      eventPhoto: (e) async* {
        yield ProgressIndicator();
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
  const factory PhotoState.statePhoto(List<PhotoModel> photoModel) = StatePhoto;
}
