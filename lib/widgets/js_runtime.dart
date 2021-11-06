import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class JsRuntime extends StatefulWidget {
  const JsRuntime({Key? key}) : super(key: key);
  @override
  _JsRuntimeState createState() => _JsRuntimeState();
}

class _JsRuntimeState extends State<JsRuntime> {
  HeadlessInAppWebView? headlessWebView;
  String url = "";

  @override
  void initState() {
    super.initState();

    headlessWebView = HeadlessInAppWebView(
      initialUrlRequest: URLRequest(
        url: Uri.parse("https://github.com/flutter"),
      ),
      onWebViewCreated: (controller) {
        const snackBar = SnackBar(
          content: Text('runtime created!'),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      onLoadStart: (controller, url) async {
        final snackBar = SnackBar(
          content: Text('onLoadStart'),
          duration: const Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      onLoadStop: (controller, url) async {
        final snackBar = SnackBar(
          content: Text('onLoadStop'),
          duration: const Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      onLoadError: (controller, url, code, message) {},
    );
  }

  @override
  void dispose() {
    super.dispose();
    headlessWebView?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () async {
              await headlessWebView?.dispose();
              await headlessWebView?.run();
            },
            child: const Text("Run HeadlessInAppWebView"),
          ),
          ElevatedButton(
            onPressed: () async {
              String blockJs = await rootBundle.loadString("assets/lamden.js");

              final lamdenWallet =
                  await headlessWebView?.webViewController.evaluateJavascript(
                source: """
                          $blockJs
                          //js 
                          Lamden.wallet.new_wallet(); 
                          ;//
                        """,
              );
              print(lamdenWallet);
            },
            child: const Text("Send console.log message"),
          ),
        ],
      ),
    );
  }
}
