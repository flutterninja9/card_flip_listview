import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pointer_state.freezed.dart';

@freezed
class PointerState with _$PointerState {
  const factory PointerState.idle() = _Idle;

  const factory PointerState.hoverLink() = _HoverLink;

  const factory PointerState.hoverHeader({
    required Widget child,
  }) = _HoverHeader;
}
