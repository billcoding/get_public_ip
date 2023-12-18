import 'package:get_public_ip/src/interface_default.dart';

var _defaultInterface = DefaultInterface();

abstract class GetPublicIP {
  static Future<String> ipv4() => _defaultInterface.ipv4();
  static Future<String> ipv6() => _defaultInterface.ipv6();
  static Future<String> ip64() => _defaultInterface.ip64();
  static Future<String> ipv4WithUrl(String url) =>
      _defaultInterface.ipv4WithUrl(url);
  static Future<String> ipv6WithUrl(String url) =>
      _defaultInterface.ipv6WithUrl(url);
  static Future<String> ip64WithUrl(String url) =>
      _defaultInterface.ip64WithUrl(url);
}
