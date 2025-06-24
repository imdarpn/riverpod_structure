import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_details_model.freezed.dart';
part 'bank_details_model.g.dart';

@freezed
class BankDetailsModel with _$BankDetailsModel {
  const factory BankDetailsModel({
    @JsonKey(name: "bank_id")
    int? bankId,
    @JsonKey(name: "account_holder_name")
    String? accountHolderName,
    @JsonKey(name: "account_number")
    String? accountNumber,
    @JsonKey(name: "iban")
    String? iban,
    @JsonKey(name: "bank_name")
    String? bankName,
  }) = _BankDetailsModel;

  factory BankDetailsModel.fromJson(Map<String, dynamic> json) => _$BankDetailsModelFromJson(json);

  static BankDetailsModel dummyBankDetailsModel() =>  BankDetailsModel.fromJson({
    "bank_id": 1,
    "account_holder_name": "test nameuy",
    "account_number": "1234567hbbh",
    "iban": "iban",
    "bank_name": "iban"
  });
}
