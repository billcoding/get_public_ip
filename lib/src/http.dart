import 'dart:convert';
import 'dart:developer' as dev;
import 'package:http/http.dart' as http;

/// The get method request wrapper from `http`.
Future<String> get(String url) async {
  var result = '';
  await http.get(Uri.parse(url)).then((resp) {
    result = utf8.decode(resp.bodyBytes);
  }).onError((error, stackTrace) {
    dev.log('http get on error: $error');
  });
  return Future.value(result);
}
