import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newstore/core/errors/api_error_model.dart';

part 'api_results.freezed.dart';

@Freezed()
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.data(T data) = Success<T>;
  const factory ApiResponse.notValidData(
      {required ApiErrorModel errorHandler}) = NotValid<T>;

  const factory ApiResponse.error({required ApiErrorModel errorHandler}) =
      Fail<T>;
}
