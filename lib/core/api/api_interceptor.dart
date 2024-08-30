// import 'package:dio/dio.dart';

// import '../enums/http_status.dart';

// class ApiInterceptors extends InterceptorsWrapper {
//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     final preferencesRepo = sl<PreferencesRepository>();

//     // Get cookies from PreferencesRepository
//     final cookies = preferencesRepo.getCookies();
//     if (cookies != null && cookies.isNotEmpty) {
//       options.headers['cookie'] = cookies;
//     }

//     // Add 'X-DID' header if the request path is not in excludedPaths
//     if (!excludedPaths.contains(options.path)) {
//       final identity = preferencesRepo.getIdentity();
//       final accessToken = preferencesRepo.getAccessToken();
//       final tokenType = preferencesRepo.getTokenType();

//       if (identity != null && accessToken != null && tokenType != null) {
//         options.headers['X-DID'] = identity;
//         options.headers['Authorization'] = "$tokenType $accessToken";
//       }
//     }

//     // Clear cookies on login or register requests
//     if (options.path == ApiEndPoints.loginUrl ||
//         options.path == ApiEndPoints.registerUrl) {
//       await preferencesRepo.removeAllKey();
//       options.headers['cookie'] = "";
//     }

//     handler.next(options);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) async {
//     final preferencesRepo = sl<PreferencesRepository>();

//     // Handle locked or unauthorized status codes
//     if (response.statusCode == HttpStatusCode.locked.code &&
//         response.requestOptions.path != ApiEndPoints.loginUrl) {
//       await preferencesRepo.removeAllKey();
//     }

//     if (response.statusCode == HttpStatusCode.unauthorized.code) {
//       AppRouter.rootNavigatorKey.currentContext?.go(AppRoutes.dashboard);
//     }

//     // Process cookies from the 'Set-Cookie' header
//     final setCookieHeader = response.headers[HttpHeaders.setCookieHeader];
//     if (setCookieHeader != null && setCookieHeader.isNotEmpty) {
//       final Map<String, String> mapCookies =
//           preferencesRepo.getCookiesMap() ?? {};

//       for (var cookie in setCookieHeader) {
//         final keyValue = _parseCookie(cookie);
//         if (keyValue != null) {
//           mapCookies.update(keyValue.key, (value) => keyValue.value,
//               ifAbsent: () => keyValue.value);
//         }
//       }

//       final cookiesFormatted =
//           mapCookies.entries.map((e) => '${e.key}=${e.value}').join('; ');

//       await Future.wait([
//         preferencesRepo.setCookies(value: cookiesFormatted),
//         preferencesRepo.setCookiesMap(value: jsonEncode(mapCookies)),
//       ]);
//     }

//     handler.next(response);
//   }

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     if (err.response?.statusCode == HttpStatusCode.unauthorized.code) {
//       AppRouter.rootNavigatorKey.currentContext?.go(AppRoutes.dashboard);
//     }
//     super.onError(err, handler);
//   }

//   // Helper function to parse a cookie string into a key-value pair
//   MapEntry<String, String>? _parseCookie(String cookie) {
//     final keyValue = cookie.split('; ')[0].split('=');
//     if (keyValue.length == 2) {
//       final key = keyValue[0].trim();
//       final value = keyValue[1].trim();
//       return MapEntry(key, value);
//     }
//     return null;
//   }
// }
