import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'register_account_state.freezed.dart';

@freezed
class RegisterAccountState with _$RegisterAccountState {
  factory RegisterAccountState({
    @Default(null) GlobalKey<FormState>? formKey,
    @Default(null) TextEditingController? mobileNumberController,
    @Default(null) FocusNode? mobileNumberNode,
    @Default(false) bool termsRead,

  }) = _RegisterAccountState;
}