import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {

  final String link;

  const WebviewScreen({super.key, required this.link});

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {

  late final WebViewController _controller = WebViewController();

  final _titleController = ValueNotifier<String?>(null);

  final _progressController = ValueNotifier(0);

  @override
  void initState() {
    _controller
        .setNavigationDelegate(NavigationDelegate(onPageFinished: (_) async {
      _titleController.value = await _controller.getTitle();
    }, onProgress: (progress) {
      _progressController.value = progress;
    }));
    _controller.loadRequest(Uri.parse(widget.link));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
            valueListenable: _titleController,
            builder: (context, title, child) {
              return Text(title ?? "加载中...");
            }),
        actions: [
          IconButton(
              onPressed: () {
                print(1111);
              },
              icon: Icon(Icons.favorite, color: Theme.of(context).primaryColor))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilder(
              animation: _progressController,
              builder: (_, child) {
                final progress = _progressController.value;
                if (progress == 100) {
                  return child!;
                }
                return LinearProgressIndicator(value: progress / 100.0);
              },child: SizedBox()),
          Expanded(child: WebViewWidget(controller: _controller)),
        ],
      ),
    );
  }
}
