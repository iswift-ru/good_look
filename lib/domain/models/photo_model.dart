import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
abstract class PhotoModel with _$PhotoModel {
  factory PhotoModel({
    int albumId,
    int id,
    String title,
    String url,
    String thumbnailUrl,
  }) = _PhotoModel;
  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);
}
