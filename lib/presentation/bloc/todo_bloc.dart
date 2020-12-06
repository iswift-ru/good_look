import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:good_look/data/models/photo_model.dart';
import 'package:good_look/data/models/todo_model.dart';
import 'package:good_look/domain/repositories/i_good_look_repository.dart';

part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final IGoodLookRepository goodLookRepository;
  TodoBloc({this.goodLookRepository}) : super(ProgressIndicator());

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    yield* event.map(eventToDo: (EventToDo value) async* {
      yield ProgressIndicator();
      final toDo = await goodLookRepository.getToDoList();
      yield StateToDo(toDo);
    });
  }
}

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.eventToDo() = EventToDo;
}

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.progressIndicator() = ProgressIndicator;
  const factory TodoState.stateToDo(List<ToDoModel> toDo) = StateToDo;
}
