import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future<dynamic> useJavascript(String source) async {
  return use(_JavascriptRuntime(source: source));
}

class _JavascriptRuntime extends Hook<Future<dynamic>> {
  final String source;

  const _JavascriptRuntime({
    required this.source,
  });

  @override
  _JavascriptRuntimeState createState() => _JavascriptRuntimeState();
}

class _JavascriptRuntimeState
    extends HookState<Future<dynamic>, _JavascriptRuntime> {
  late HeadlessInAppWebView _headlessWebView;

  @override
  void initHook() async {
    _headlessWebView = HeadlessInAppWebView(
      initialUrlRequest: URLRequest(
        url: Uri.parse("https://github.com/flutter"),
      ),
      onWebViewCreated: (controller) {},
      onLoadStart: (controller, url) {},
      onLoadStop: (controller, url) {},
      onLoadError: (controller, url, code, message) {},
    );
    await _headlessWebView.run();
  }

  @override
  void dispose() {
    _headlessWebView.dispose();
  }

  @override
  Future<dynamic> build(BuildContext context) {
    return _headlessWebView.webViewController
        .evaluateJavascript(source: hook.source);
  }
}
