import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'usdt2inr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UpgradeAlert(
        child: MyWebView(),
      ),
    );
  }
}

class MyWebView extends StatefulWidget {
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0),
        child: AppBar(),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse('https://shorturl.at/bfoJ2')),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            javaScriptEnabled: true,
          ),
        ),
      ),
      floatingActionButton: Container(), // Empty container to remove the FloatingActionButton
    );
  }

  void launchAppLandingPage() async {
    // Clear cookies to avoid ERR_CACHE_MISS
    if (webViewController != null) {
      await webViewController!.loadUrl(urlRequest: URLRequest(url: Uri.parse('https://instagram.com/abhishek._.developer')));
    }
  }
}
