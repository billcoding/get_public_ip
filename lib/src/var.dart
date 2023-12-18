import 'package:get_public_ip/src/interface_default.dart';

/// The default interface.
var _defaultInterface = DefaultInterface();

/// A get public ip helper interface
abstract class GetPublicIP {
  /// Get ipv4 address on current network.
  static Future<String> ipv4() => _defaultInterface.ipv4();

  /// Get ipv6 address on current network.
  static Future<String> ipv6() => _defaultInterface.ipv6();

  /// Get ipv4 or ipv6 address on current network.
  static Future<String> ip64() => _defaultInterface.ip64();

  /// Get ipv4 address with custom url on current network.
  static Future<String> ipv4WithUrl(String url) =>
      _defaultInterface.ipv4WithUrl(url);

  /// Get ipv6 address with custom url on current network.
  static Future<String> ipv6WithUrl(String url) =>
      _defaultInterface.ipv6WithUrl(url);

  /// Get ipv4 or ipv6 address with custom url on current network.
  static Future<String> ip64WithUrl(String url) =>
      _defaultInterface.ip64WithUrl(url);
}
