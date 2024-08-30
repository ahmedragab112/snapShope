import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class Preferences {
  @Id()
  int id;
  String? tokenType;
  String? token;
  String? identity;
  String? cookies;
  String? language;
  String? theme;
  @Property(type: PropertyType.byteVector)
  List<int>? cookiesMap;
  bool? isOnboardingVisited;
  String? otp;
  String? phone;

  Preferences({
    this.id = 0,
    this.token,
    this.identity,
    this.cookies,
    this.cookiesMap,
    this.isOnboardingVisited,
    this.otp,
    this.phone,
    this.tokenType,
    this.language,
    this.theme,
  });

  // Convert Map<String, dynamic> to List<int> for storage
  static List<int> mapToBytes(Map<String, dynamic> map) {
    return utf8.encode(json.encode(map));
  }

  // Convert List<int> back to Map<String, dynamic>
  static Map<String, dynamic> bytesToMap(List<int> bytes) {
    return json.decode(utf8.decode(bytes));
  }
}
