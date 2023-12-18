/// Defines the get public ip address interface.
abstract class Interface {
  /// Get ipv4 address on current network.
  Future<String> ipv4();

  /// Get ipv6 address on current network.
  Future<String> ipv6();

  /// Get ipv4 or ipv6 address on current network.
  Future<String> ip64();

  /// Get ipv4 address with custom url on current network.
  Future<String> ipv4WithUrl(String url);

  /// Get ipv6 address with custom url on current network.
  Future<String> ipv6WithUrl(String url);

  /// Get ipv4 or ipv6 address with custom url on current network.
  Future<String> ip64WithUrl(String url);
}
