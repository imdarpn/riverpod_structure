// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitModelImpl _$$InitModelImplFromJson(Map<String, dynamic> json) =>
    _$InitModelImpl(
      googleMapKey: json['google_map_key'] as String?,
      s3: json['s3'] == null
          ? null
          : S3Model.fromJson(json['s3'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitModelImplToJson(_$InitModelImpl instance) =>
    <String, dynamic>{
      'google_map_key': instance.googleMapKey,
      's3': instance.s3,
    };

_$S3ModelImpl _$$S3ModelImplFromJson(Map<String, dynamic> json) =>
    _$S3ModelImpl(
      accessKey: json['key'] as String?,
      secretKey: json['secret'] as String?,
      bucketName: json['bucket'] as String?,
      region: json['region'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$S3ModelImplToJson(_$S3ModelImpl instance) =>
    <String, dynamic>{
      'key': instance.accessKey,
      'secret': instance.secretKey,
      'bucket': instance.bucketName,
      'region': instance.region,
      'url': instance.url,
    };
