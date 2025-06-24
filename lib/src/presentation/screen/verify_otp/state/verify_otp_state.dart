import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_state.freezed.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  factory VerifyOtpState({
    @Default(null) GlobalKey<FormState>? formKey,
    @Default(null) TextEditingController? otpController,
    @Default(30) int? countDownSeconds,
  }) = _VerifyOtpState;
}