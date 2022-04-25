import 'package:card_flip_listview/cuberto_clone/bloc/pointer_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointerCubit extends Cubit<PointerState> {
  PointerCubit() : super(const PointerState.idle());

  void onHoverLink() => emit(const PointerState.hoverLink());

  void onHoverHeader(Widget child) => emit(
        PointerState.hoverHeader(child: child),
      );

  void onExit() => emit(const PointerState.idle());
}
