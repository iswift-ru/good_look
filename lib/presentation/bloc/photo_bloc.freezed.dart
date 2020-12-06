// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PhotoEventTearOff {
  const _$PhotoEventTearOff();

// ignore: unused_element
  EventPhoto eventPhoto() {
    return const EventPhoto();
  }
}

/// @nodoc
// ignore: unused_element
const $PhotoEvent = _$PhotoEventTearOff();

/// @nodoc
mixin _$PhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult eventPhoto(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult eventPhoto(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult eventPhoto(EventPhoto value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult eventPhoto(EventPhoto value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PhotoEventCopyWith<$Res> {
  factory $PhotoEventCopyWith(
          PhotoEvent value, $Res Function(PhotoEvent) then) =
      _$PhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoEventCopyWithImpl<$Res> implements $PhotoEventCopyWith<$Res> {
  _$PhotoEventCopyWithImpl(this._value, this._then);

  final PhotoEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoEvent) _then;
}

/// @nodoc
abstract class $EventPhotoCopyWith<$Res> {
  factory $EventPhotoCopyWith(
          EventPhoto value, $Res Function(EventPhoto) then) =
      _$EventPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventPhotoCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
    implements $EventPhotoCopyWith<$Res> {
  _$EventPhotoCopyWithImpl(EventPhoto _value, $Res Function(EventPhoto) _then)
      : super(_value, (v) => _then(v as EventPhoto));

  @override
  EventPhoto get _value => super._value as EventPhoto;
}

/// @nodoc
class _$EventPhoto implements EventPhoto {
  const _$EventPhoto();

  @override
  String toString() {
    return 'PhotoEvent.eventPhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventPhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult eventPhoto(),
  }) {
    assert(eventPhoto != null);
    return eventPhoto();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult eventPhoto(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventPhoto != null) {
      return eventPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult eventPhoto(EventPhoto value),
  }) {
    assert(eventPhoto != null);
    return eventPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult eventPhoto(EventPhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventPhoto != null) {
      return eventPhoto(this);
    }
    return orElse();
  }
}

abstract class EventPhoto implements PhotoEvent {
  const factory EventPhoto() = _$EventPhoto;
}

/// @nodoc
class _$PhotoStateTearOff {
  const _$PhotoStateTearOff();

// ignore: unused_element
  ProgressIndicator progressIndicator() {
    return const ProgressIndicator();
  }

// ignore: unused_element
  StatePhoto statePhoto(List<PhotoModel> photoModel) {
    return StatePhoto(
      photoModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhotoState = _$PhotoStateTearOff();

/// @nodoc
mixin _$PhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult progressIndicator(),
    @required TResult statePhoto(List<PhotoModel> photoModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult progressIndicator(),
    TResult statePhoto(List<PhotoModel> photoModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult progressIndicator(ProgressIndicator value),
    @required TResult statePhoto(StatePhoto value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult progressIndicator(ProgressIndicator value),
    TResult statePhoto(StatePhoto value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;
}

/// @nodoc
abstract class $ProgressIndicatorCopyWith<$Res> {
  factory $ProgressIndicatorCopyWith(
          ProgressIndicator value, $Res Function(ProgressIndicator) then) =
      _$ProgressIndicatorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressIndicatorCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res>
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
    return 'PhotoState.progressIndicator()';
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
    @required TResult statePhoto(List<PhotoModel> photoModel),
  }) {
    assert(progressIndicator != null);
    assert(statePhoto != null);
    return progressIndicator();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult progressIndicator(),
    TResult statePhoto(List<PhotoModel> photoModel),
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
    @required TResult statePhoto(StatePhoto value),
  }) {
    assert(progressIndicator != null);
    assert(statePhoto != null);
    return progressIndicator(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult progressIndicator(ProgressIndicator value),
    TResult statePhoto(StatePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (progressIndicator != null) {
      return progressIndicator(this);
    }
    return orElse();
  }
}

abstract class ProgressIndicator implements PhotoState {
  const factory ProgressIndicator() = _$ProgressIndicator;
}

/// @nodoc
abstract class $StatePhotoCopyWith<$Res> {
  factory $StatePhotoCopyWith(
          StatePhoto value, $Res Function(StatePhoto) then) =
      _$StatePhotoCopyWithImpl<$Res>;
  $Res call({List<PhotoModel> photoModel});
}

/// @nodoc
class _$StatePhotoCopyWithImpl<$Res> extends _$PhotoStateCopyWithImpl<$Res>
    implements $StatePhotoCopyWith<$Res> {
  _$StatePhotoCopyWithImpl(StatePhoto _value, $Res Function(StatePhoto) _then)
      : super(_value, (v) => _then(v as StatePhoto));

  @override
  StatePhoto get _value => super._value as StatePhoto;

  @override
  $Res call({
    Object photoModel = freezed,
  }) {
    return _then(StatePhoto(
      photoModel == freezed
          ? _value.photoModel
          : photoModel as List<PhotoModel>,
    ));
  }
}

/// @nodoc
class _$StatePhoto implements StatePhoto {
  const _$StatePhoto(this.photoModel) : assert(photoModel != null);

  @override
  final List<PhotoModel> photoModel;

  @override
  String toString() {
    return 'PhotoState.statePhoto(photoModel: $photoModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatePhoto &&
            (identical(other.photoModel, photoModel) ||
                const DeepCollectionEquality()
                    .equals(other.photoModel, photoModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoModel);

  @override
  $StatePhotoCopyWith<StatePhoto> get copyWith =>
      _$StatePhotoCopyWithImpl<StatePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult progressIndicator(),
    @required TResult statePhoto(List<PhotoModel> photoModel),
  }) {
    assert(progressIndicator != null);
    assert(statePhoto != null);
    return statePhoto(photoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult progressIndicator(),
    TResult statePhoto(List<PhotoModel> photoModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (statePhoto != null) {
      return statePhoto(photoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult progressIndicator(ProgressIndicator value),
    @required TResult statePhoto(StatePhoto value),
  }) {
    assert(progressIndicator != null);
    assert(statePhoto != null);
    return statePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult progressIndicator(ProgressIndicator value),
    TResult statePhoto(StatePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (statePhoto != null) {
      return statePhoto(this);
    }
    return orElse();
  }
}

abstract class StatePhoto implements PhotoState {
  const factory StatePhoto(List<PhotoModel> photoModel) = _$StatePhoto;

  List<PhotoModel> get photoModel;
  $StatePhotoCopyWith<StatePhoto> get copyWith;
}
