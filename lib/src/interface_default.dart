import 'package:get_public_ip/src/http.dart';
import 'package:get_public_ip/src/interface.dart';

/// The default implements `Interface`
///
/// ipv4 use: `https://api4.ipify.org`
///
/// ipv6 use: `https://api6.ipify.org`
///
/// ip64 use: `https://api64.ipify.org`.
final class DefaultInterface implements Interface {
  static final String ip64Url = 'https://api64.ipify.org';
  static final String ipv4Url = 'https://api4.ipify.org';
  static final String ipv6Url = 'https://api6.ipify.org';
  @override
  Future<String> ip64() => ip64WithUrl(ip64Url);
  @override
  Future<String> ip64WithUrl(String url) => get(url);
  @override
  Future<String> ipv4() => ipv4WithUrl(ipv4Url);
  @override
  Future<String> ipv4WithUrl(String url) => get(url);
  @override
  Future<String> ipv6() => ipv6WithUrl(ipv6Url);
  @override
  Future<String> ipv6WithUrl(String url) => get(url);
}
