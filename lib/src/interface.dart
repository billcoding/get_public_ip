abstract class Interface {
  Future<String> ip64();
  Future<String> ip64WithUrl(String url);
  Future<String> ipv4();
  Future<String> ipv4WithUrl(String url);
  Future<String> ipv6();
  Future<String> ipv6WithUrl(String url);
}
