// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

// ignore: unused_element
  EventToDo eventToDo() {
    return const EventToDo();
  }
}

/// @nodoc
// ignore: unused_element
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult eventToDo(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult eventToDo(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult eventToDo(EventToDo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult eventToDo(EventToDo value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class $EventToDoCopyWith<$Res> {
  factory $EventToDoCopyWith(EventToDo value, $Res Function(EventToDo) then) =
      _$EventToDoCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventToDoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $EventToDoCopyWith<$Res> {
  _$EventToDoCopyWithImpl(EventToDo _value, $Res Function(EventToDo) _then)
      : super(_value, (v) => _then(v as EventToDo));

  @override
  EventToDo get _value => super._value as EventToDo;
}

/// @nodoc
class _$EventToDo implements EventToDo {
  const _$EventToDo();

  @override
  String toString() {
    return 'TodoEvent.eventToDo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventToDo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult eventToDo(),
  }) {
    assert(eventToDo != null);
    return eventToDo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult eventToDo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventToDo != null) {
      return eventToDo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult eventToDo(EventToDo value),
  }) {
    assert(eventToDo != null);
    return eventToDo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult eventToDo(EventToDo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventToDo != null) {
      return eventToDo(this);
    }
    return orElse();
  }
}

abstract class EventToDo implements TodoEvent {
  const factory EventToDo() = _$EventToDo;
}

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

// ignore: unused_element
  ProgressIndicator progressIndicator() {
    return const ProgressIndicator();
  }

// ignore: unused_element
  StateToDo stateToDo(List<ToDoModel> toDo) {
    return StateToDo(
      toDo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult progressIndicator(),
    @required TResult stateToDo(List<ToDoModel> toDo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult progressIndicator(),
    TResult stateToDo(List<ToDoModel> toDo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult progressIndicator(ProgressIndicator value),
    @required TResult stateToDo(StateToDo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult progressIndicator(ProgressIndicator value),
    TResult stateToDo(StateToDo value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class $ProgressIndicatorCopyWith<$Res> {
  factory $ProgressIndicatorCopyWith(
          ProgressIndicator value, $Res Function(ProgressIndicator) then) =
      _$ProgressIndicatorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressIndicatorCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res>
    implements $ProgressIndicatorCopyWith<$Res> {
  _$ProgressIndicatorCopyWithImpl(
      ProgressIndicator _value, $Res Function(ProgressIndicator) _then)
      : super(_value, (v) => _then(v as ProgressIndicator));

  @override
  ProgressIndicator get _value => super._value as ProgressIndicator;
}

/// @nodoc
class _$ProgressIndicator implements ProgressIndicator {
  const _$ProgressIndicator();

  @override
  String toString() {
    return 'TodoState.progressIndicator()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProgressIndicator);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult progressIndicator(),
    @required TResult stateToDo(List<ToDoModel> toDo),
  }) {
    assert(progressIndicator != null);
    assert(stateToDo != null);
    return progressIndicator();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult progressIndicator(),
    TResult stateToDo(List<ToDoModel> toDo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (progressIndicator != null) {
      return progressIndicator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult progressIndicator(ProgressIndicator value),
    @required TResult stateToDo(StateToDo value),
  }) {
    assert(progressIndicator != null);
    assert(stateToDo != null);
    return progressIndicator(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult progressIndicator(ProgressIndicator value),
    TResult stateToDo(StateToDo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (progressIndicator != null) {
      return progressIndicator(this);
    }
    return orElse();
  }
}

abstract class ProgressIndicator implements TodoState {
  const factory ProgressIndicator() = _$ProgressIndicator;
}

/// @nodoc
abstract class $StateToDoCopyWith<$Res> {
  factory $StateToDoCopyWith(StateToDo value, $Res Function(StateToDo) then) =
      _$StateToDoCopyWithImpl<$Res>;
  $Res call({List<ToDoModel> toDo});
}

/// @nodoc
class _$StateToDoCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements $StateToDoCopyWith<$Res> {
  _$StateToDoCopyWithImpl(StateToDo _value, $Res Function(StateToDo) _then)
      : super(_value, (v) => _then(v as StateToDo));

  @override
  StateToDo get _value => super._value as StateToDo;

  @override
  $Res call({
    Object toDo = freezed,
  }) {
    return _then(StateToDo(
      toDo == freezed ? _value.toDo : toDo as List<ToDoModel>,
    ));
  }
}

/// @nodoc
class _$StateToDo implements StateToDo {
  const _$StateToDo(this.toDo) : assert(toDo != null);

  @override
  final List<ToDoModel> toDo;

  @override
  String toString() {
    return 'TodoState.stateToDo(toDo: $toDo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateToDo &&
            (identical(other.toDo, toDo) ||
                const DeepCollectionEquality().equals(other.toDo, toDo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(toDo);

  @override
  $StateToDoCopyWith<StateToDo> get copyWith =>
      _$StateToDoCopyWithImpl<StateToDo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult progressIndicator(),
    @required TResult stateToDo(List<ToDoModel> toDo),
  }) {
    assert(progressIndicator != null);
    assert(stateToDo != null);
    return stateToDo(toDo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult progressIndicator(),
    TResult stateToDo(List<ToDoModel> toDo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stateToDo != null) {
      return stateToDo(toDo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult progressIndicator(ProgressIndicator value),
    @required TResult stateToDo(StateToDo value),
  }) {
    assert(progressIndicator != null);
    assert(stateToDo != null);
    return stateToDo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult progressIndicator(ProgressIndicator value),
    TResult stateToDo(StateToDo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stateToDo != null) {
      return stateToDo(this);
    }
    return orElse();
  }
}

abstract class StateToDo implements TodoState {
  const factory StateToDo(List<ToDoModel> toDo) = _$StateToDo;

  List<ToDoModel> get toDo;
  $StateToDoCopyWith<StateToDo> get copyWith;
}
