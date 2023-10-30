import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatelessWidget {
WebViewContainer({super.key,required this.url});
String url;

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
..setJavaScriptMode(JavaScriptMode.unrestricted)
..loadRequest(Uri.parse(url))
..clearCache();

print(url);
    return SafeArea(child: Scaffold(
    
     
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData().copyWith(color: Colors.black),
      ),
      body: WebViewWidget(controller: controller,),
    ));
  }
}