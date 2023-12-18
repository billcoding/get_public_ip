import 'dart:developer';
import 'package:test/test.dart';
import 'package:get_public_ip/get_public_ip.dart';

void main() {
  group('get_public_ip', () {
    test('ipv4', () async {
      var ipv4 = await GetPublicIP.ipv4();
      log('ipv4: $ipv4');
    });
    test('ipv6', () async {
      var ipv6 = await GetPublicIP.ipv6();
      log('ipv6: $ipv6');
    });
    test('ip64', () async {
      var ip64 = await GetPublicIP.ip64();
      log('ip64: $ip64');
    });
    Future.sync(() {});
  });
}
