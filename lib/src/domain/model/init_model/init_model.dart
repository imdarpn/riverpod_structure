import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_model.freezed.dart';
part 'init_model.g.dart';


@freezed
class InitModel with _$InitModel {
  const factory InitModel({

    @JsonKey(name: "google_map_key")
    required String? googleMapKey,
    @JsonKey(name: "s3")
    S3Model? s3,


  }) = _InitModel;

  factory InitModel.fromJson(Map<String, dynamic> json) => _$InitModelFromJson(json);
}


@freezed
class S3Model with _$S3Model {
  const factory S3Model({
    @JsonKey(name: "key")
    required String? accessKey,
    @JsonKey(name: "secret")
    required String? secretKey,
    @JsonKey(name: "bucket")
    required String? bucketName,
    @JsonKey(name: "region")
    required String? region,
    @JsonKey(name: "url")
    required String? url,
  }) = _S3Model;

  factory S3Model.fromJson(Map<String, dynamic> json) => _$S3ModelFromJson(json);

  static const String s3BucketSlug = "street_deals";
}




