// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
class _$PhotoModelTearOff {
  const _$PhotoModelTearOff();

// ignore: unused_element
  _PhotoModel call(
      {int albumId, int id, String title, String url, String thumbnailUrl}) {
    return _PhotoModel(
      albumId: albumId,
      id: id,
      title: title,
      url: url,
      thumbnailUrl: thumbnailUrl,
    );
  }

// ignore: unused_element
  PhotoModel fromJson(Map<String, Object> json) {
    return PhotoModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PhotoModel = _$PhotoModelTearOff();

/// @nodoc
mixin _$PhotoModel {
  int get albumId;
  int get id;
  String get title;
  String get url;
  String get thumbnailUrl;

  Map<String, dynamic> toJson();
  $PhotoModelCopyWith<PhotoModel> get copyWith;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res>;
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res> implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  final PhotoModel _value;
  // ignore: unused_field
  final $Res Function(PhotoModel) _then;

  @override
  $Res call({
    Object albumId = freezed,
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: albumId == freezed ? _value.albumId : albumId as int,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$PhotoModelCopyWith<$Res> implements $PhotoModelCopyWith<$Res> {
  factory _$PhotoModelCopyWith(
          _PhotoModel value, $Res Function(_PhotoModel) then) =
      __$PhotoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class __$PhotoModelCopyWithImpl<$Res> extends _$PhotoModelCopyWithImpl<$Res>
    implements _$PhotoModelCopyWith<$Res> {
  __$PhotoModelCopyWithImpl(
      _PhotoModel _value, $Res Function(_PhotoModel) _then)
      : super(_value, (v) => _then(v as _PhotoModel));

  @override
  _PhotoModel get _value => super._value as _PhotoModel;

  @override
  $Res call({
    Object albumId = freezed,
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object thumbnailUrl = freezed,
  }) {
    return _then(_PhotoModel(
      albumId: albumId == freezed ? _value.albumId : albumId as int,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PhotoModel implements _PhotoModel {
  _$_PhotoModel(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory _$_PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoModelFromJson(json);

  @override
  final int albumId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'PhotoModel(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoModel &&
            (identical(other.albumId, albumId) ||
                const DeepCollectionEquality()
                    .equals(other.albumId, albumId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(albumId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(thumbnailUrl);

  @override
  _$PhotoModelCopyWith<_PhotoModel> get copyWith =>
      __$PhotoModelCopyWithImpl<_PhotoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoModelToJson(this);
  }
}

abstract class _PhotoModel implements PhotoModel {
  factory _PhotoModel(
      {int albumId,
      int id,
      String title,
      String url,
      String thumbnailUrl}) = _$_PhotoModel;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$_PhotoModel.fromJson;

  @override
  int get albumId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  _$PhotoModelCopyWith<_PhotoModel> get copyWith;
}
