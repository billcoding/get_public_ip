import 'package:flutter/material.dart';
import 'package:get_public_ip/get_public_ip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ipv4 = '';
  String ipv6 = '';
  String ip64 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('get public ipv4: $ipv4'),
            Text('get public ipv6: $ipv6'),
            Text('get public ip64: $ip64'),
            TextButton(
                onPressed: () async {
                  ipv4 = await GetPublicIP.ip64();
                  ipv6 = await GetPublicIP.ipv6();
                  ip64 = await GetPublicIP.ip64();
                  ipv4 = ipv4.isNotEmpty ? ipv4 : '获取失败';
                  ipv6 = ipv6.isNotEmpty ? ipv6 : '获取失败';
                  ip64 = ip64.isNotEmpty ? ip64 : '获取失败';
                  setState(() {});
                },
                child: const Text('Get'))
          ],
        ),
      ),
    );
  }
}
