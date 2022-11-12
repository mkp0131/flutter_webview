import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final homeUrl = 'https://lililli.kr';
  WebViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('웹뷰'),
        centerTitle: true, // 타이틀 위치 센터(IOS, ANDROID 기본세팅이 다를 수 있기에 필수)
        actions: [
          IconButton(onPressed: () {
            if (controller == null) {
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: const Icon(Icons.home))
        ],
      ),
      body: WebView(
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted, // 자바스크립트 허용
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
          print('Init');
          print(controller);
          print(this.controller);
        },
      ),
    );
  }
}
