// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pointer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PointerStateTearOff {
  const _$PointerStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _HoverLink hoverLink() {
    return const _HoverLink();
  }

  _HoverHeader hoverHeader(
      {required Color foregroundColor, required Widget child}) {
    return _HoverHeader(
      foregroundColor: foregroundColor,
      child: child,
    );
  }
}

/// @nodoc
const $PointerState = _$PointerStateTearOff();

/// @nodoc
mixin _$PointerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() hoverLink,
    required TResult Function(Color foregroundColor, Widget child) hoverHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_HoverLink value) hoverLink,
    required TResult Function(_HoverHeader value) hoverHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointerStateCopyWith<$Res> {
  factory $PointerStateCopyWith(
          PointerState value, $Res Function(PointerState) then) =
      _$PointerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PointerStateCopyWithImpl<$Res> implements $PointerStateCopyWith<$Res> {
  _$PointerStateCopyWithImpl(this._value, this._then);

  final PointerState _value;
  // ignore: unused_field
  final $Res Function(PointerState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$PointerStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'PointerState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() hoverLink,
    required TResult Function(Color foregroundColor, Widget child) hoverHeader,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_HoverLink value) hoverLink,
    required TResult Function(_HoverHeader value) hoverHeader,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements PointerState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$HoverLinkCopyWith<$Res> {
  factory _$HoverLinkCopyWith(
          _HoverLink value, $Res Function(_HoverLink) then) =
      __$HoverLinkCopyWithImpl<$Res>;
}

/// @nodoc
class __$HoverLinkCopyWithImpl<$Res> extends _$PointerStateCopyWithImpl<$Res>
    implements _$HoverLinkCopyWith<$Res> {
  __$HoverLinkCopyWithImpl(_HoverLink _value, $Res Function(_HoverLink) _then)
      : super(_value, (v) => _then(v as _HoverLink));

  @override
  _HoverLink get _value => super._value as _HoverLink;
}

/// @nodoc

class _$_HoverLink implements _HoverLink {
  const _$_HoverLink();

  @override
  String toString() {
    return 'PointerState.hoverLink()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HoverLink);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() hoverLink,
    required TResult Function(Color foregroundColor, Widget child) hoverHeader,
  }) {
    return hoverLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
  }) {
    return hoverLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
    required TResult orElse(),
  }) {
    if (hoverLink != null) {
      return hoverLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_HoverLink value) hoverLink,
    required TResult Function(_HoverHeader value) hoverHeader,
  }) {
    return hoverLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
  }) {
    return hoverLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
    required TResult orElse(),
  }) {
    if (hoverLink != null) {
      return hoverLink(this);
    }
    return orElse();
  }
}

abstract class _HoverLink implements PointerState {
  const factory _HoverLink() = _$_HoverLink;
}

/// @nodoc
abstract class _$HoverHeaderCopyWith<$Res> {
  factory _$HoverHeaderCopyWith(
          _HoverHeader value, $Res Function(_HoverHeader) then) =
      __$HoverHeaderCopyWithImpl<$Res>;
  $Res call({Color foregroundColor, Widget child});
}

/// @nodoc
class __$HoverHeaderCopyWithImpl<$Res> extends _$PointerStateCopyWithImpl<$Res>
    implements _$HoverHeaderCopyWith<$Res> {
  __$HoverHeaderCopyWithImpl(
      _HoverHeader _value, $Res Function(_HoverHeader) _then)
      : super(_value, (v) => _then(v as _HoverHeader));

  @override
  _HoverHeader get _value => super._value as _HoverHeader;

  @override
  $Res call({
    Object? foregroundColor = freezed,
    Object? child = freezed,
  }) {
    return _then(_HoverHeader(
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_HoverHeader implements _HoverHeader {
  const _$_HoverHeader({required this.foregroundColor, required this.child});

  @override
  final Color foregroundColor;
  @override
  final Widget child;

  @override
  String toString() {
    return 'PointerState.hoverHeader(foregroundColor: $foregroundColor, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HoverHeader &&
            const DeepCollectionEquality()
                .equals(other.foregroundColor, foregroundColor) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(foregroundColor),
      const DeepCollectionEquality().hash(child));

  @JsonKey(ignore: true)
  @override
  _$HoverHeaderCopyWith<_HoverHeader> get copyWith =>
      __$HoverHeaderCopyWithImpl<_HoverHeader>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() hoverLink,
    required TResult Function(Color foregroundColor, Widget child) hoverHeader,
  }) {
    return hoverHeader(foregroundColor, child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
  }) {
    return hoverHeader?.call(foregroundColor, child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? hoverLink,
    TResult Function(Color foregroundColor, Widget child)? hoverHeader,
    required TResult orElse(),
  }) {
    if (hoverHeader != null) {
      return hoverHeader(foregroundColor, child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_HoverLink value) hoverLink,
    required TResult Function(_HoverHeader value) hoverHeader,
  }) {
    return hoverHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
  }) {
    return hoverHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_HoverLink value)? hoverLink,
    TResult Function(_HoverHeader value)? hoverHeader,
    required TResult orElse(),
  }) {
    if (hoverHeader != null) {
      return hoverHeader(this);
    }
    return orElse();
  }
}

abstract class _HoverHeader implements PointerState {
  const factory _HoverHeader(
      {required Color foregroundColor, required Widget child}) = _$_HoverHeader;

  Color get foregroundColor;
  Widget get child;
  @JsonKey(ignore: true)
  _$HoverHeaderCopyWith<_HoverHeader> get copyWith =>
      throw _privateConstructorUsedError;
}
