// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiErrorModel errorHandler) notValidData,
    required TResult Function(ApiErrorModel errorHandler) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiErrorModel errorHandler)? notValidData,
    TResult? Function(ApiErrorModel errorHandler)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiErrorModel errorHandler)? notValidData,
    TResult Function(ApiErrorModel errorHandler)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) data,
    required TResult Function(NotValid<T> value) notValidData,
    required TResult Function(Fail<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? data,
    TResult? Function(NotValid<T> value)? notValidData,
    TResult? Function(Fail<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? data,
    TResult Function(NotValid<T> value)? notValidData,
    TResult Function(Fail<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiErrorModel errorHandler) notValidData,
    required TResult Function(ApiErrorModel errorHandler) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiErrorModel errorHandler)? notValidData,
    TResult? Function(ApiErrorModel errorHandler)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiErrorModel errorHandler)? notValidData,
    TResult Function(ApiErrorModel errorHandler)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) data,
    required TResult Function(NotValid<T> value) notValidData,
    required TResult Function(Fail<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? data,
    TResult? Function(NotValid<T> value)? notValidData,
    TResult? Function(Fail<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? data,
    TResult Function(NotValid<T> value)? notValidData,
    TResult Function(Fail<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements ApiResponse<T> {
  const factory Success(final T data) = _$SuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotValidImplCopyWith<T, $Res> {
  factory _$$NotValidImplCopyWith(
          _$NotValidImpl<T> value, $Res Function(_$NotValidImpl<T>) then) =
      __$$NotValidImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel errorHandler});
}

/// @nodoc
class __$$NotValidImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$NotValidImpl<T>>
    implements _$$NotValidImplCopyWith<T, $Res> {
  __$$NotValidImplCopyWithImpl(
      _$NotValidImpl<T> _value, $Res Function(_$NotValidImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$NotValidImpl<T>(
      errorHandler: null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$NotValidImpl<T> implements NotValid<T> {
  const _$NotValidImpl({required this.errorHandler});

  @override
  final ApiErrorModel errorHandler;

  @override
  String toString() {
    return 'ApiResponse<$T>.notValidData(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotValidImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotValidImplCopyWith<T, _$NotValidImpl<T>> get copyWith =>
      __$$NotValidImplCopyWithImpl<T, _$NotValidImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiErrorModel errorHandler) notValidData,
    required TResult Function(ApiErrorModel errorHandler) error,
  }) {
    return notValidData(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiErrorModel errorHandler)? notValidData,
    TResult? Function(ApiErrorModel errorHandler)? error,
  }) {
    return notValidData?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiErrorModel errorHandler)? notValidData,
    TResult Function(ApiErrorModel errorHandler)? error,
    required TResult orElse(),
  }) {
    if (notValidData != null) {
      return notValidData(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) data,
    required TResult Function(NotValid<T> value) notValidData,
    required TResult Function(Fail<T> value) error,
  }) {
    return notValidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? data,
    TResult? Function(NotValid<T> value)? notValidData,
    TResult? Function(Fail<T> value)? error,
  }) {
    return notValidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? data,
    TResult Function(NotValid<T> value)? notValidData,
    TResult Function(Fail<T> value)? error,
    required TResult orElse(),
  }) {
    if (notValidData != null) {
      return notValidData(this);
    }
    return orElse();
  }
}

abstract class NotValid<T> implements ApiResponse<T> {
  const factory NotValid({required final ApiErrorModel errorHandler}) =
      _$NotValidImpl<T>;

  ApiErrorModel get errorHandler;
  @JsonKey(ignore: true)
  _$$NotValidImplCopyWith<T, _$NotValidImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailImplCopyWith<T, $Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl<T> value, $Res Function(_$FailImpl<T>) then) =
      __$$FailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel errorHandler});
}

/// @nodoc
class __$$FailImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$FailImpl<T>>
    implements _$$FailImplCopyWith<T, $Res> {
  __$$FailImplCopyWithImpl(
      _$FailImpl<T> _value, $Res Function(_$FailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$FailImpl<T>(
      errorHandler: null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$FailImpl<T> implements Fail<T> {
  const _$FailImpl({required this.errorHandler});

  @override
  final ApiErrorModel errorHandler;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailImplCopyWith<T, _$FailImpl<T>> get copyWith =>
      __$$FailImplCopyWithImpl<T, _$FailImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiErrorModel errorHandler) notValidData,
    required TResult Function(ApiErrorModel errorHandler) error,
  }) {
    return error(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiErrorModel errorHandler)? notValidData,
    TResult? Function(ApiErrorModel errorHandler)? error,
  }) {
    return error?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiErrorModel errorHandler)? notValidData,
    TResult Function(ApiErrorModel errorHandler)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) data,
    required TResult Function(NotValid<T> value) notValidData,
    required TResult Function(Fail<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? data,
    TResult? Function(NotValid<T> value)? notValidData,
    TResult? Function(Fail<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? data,
    TResult Function(NotValid<T> value)? notValidData,
    TResult Function(Fail<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Fail<T> implements ApiResponse<T> {
  const factory Fail({required final ApiErrorModel errorHandler}) =
      _$FailImpl<T>;

  ApiErrorModel get errorHandler;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<T, _$FailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
