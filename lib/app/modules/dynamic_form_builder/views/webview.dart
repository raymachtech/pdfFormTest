import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClass extends StatefulWidget {
  @override
  WebViewClassState createState() => WebViewClassState();
}

class WebViewClassState extends State<WebViewClass> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: Uri.encodeFull('http://form.raymach.in'),
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
