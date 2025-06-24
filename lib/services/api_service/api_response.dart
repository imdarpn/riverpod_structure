import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {

  @JsonKey(name: 'status')
  final bool success;

  @JsonKey(name: 'message', defaultValue: '')
  final String message;

  @JsonKey(name: 'data')
  final T? jsonData;

  @JsonKey(name: "links")
  final Links? links;

  ApiResponse({
    this.message = '',
    this.jsonData,
    this.success = false,
    this.links,
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);
}

@JsonSerializable()
class Links {
  @JsonKey(name: "first")
  final String first;
  @JsonKey(name: "last")
  final String last;
  @JsonKey(name: "prev")
  final String? prev;
  @JsonKey(name: "next")
  final String? next;

  Links({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}