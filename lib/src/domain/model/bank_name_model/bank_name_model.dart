import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_name_model.freezed.dart';
part 'bank_name_model.g.dart';

@freezed
class BankNameModel with _$BankNameModel {
  const factory BankNameModel({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "country")
    required String country,
  }) = _BankNameModel;

  factory BankNameModel.fromJson(Map<String, dynamic> json) => _$BankNameModelFromJson(json);
}