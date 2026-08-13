import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OpenSource {
  OpenSource(this.name, this.link);

  final String name;
  final String link;
}

class OpenSourceLicenses extends StatelessWidget {
  OpenSourceLicenses({super.key});

  final List<OpenSource> list = [
    OpenSource('Flutter',
        'https://raw.githubusercontent.com/flutter/flutter/master/LICENSE'),
    OpenSource('cupertino_icons',
        'https://raw.githubusercontent.com/flutter/cupertino_icons/master/LICENSE'),
    OpenSource('quick_actions',
        'https://raw.githubusercontent.com/flutter/packages/main/LICENSE'),
    OpenSource('google_fonts',
        'https://raw.githubusercontent.com/material-foundation/flutter-packages/main/LICENSE'),
    OpenSource('mobx',
        'https://raw.githubusercontent.com/mobxjs/mobx.dart/master/LICENSE'),
    OpenSource('flutter_mobx',
        'https://raw.githubusercontent.com/mobxjs/mobx.dart/master/LICENSE'),
    OpenSource('provider',
        'https://raw.githubusercontent.com/rrousselGit/provider/master/LICENSE'),
    OpenSource('url_launcher',
        'https://raw.githubusercontent.com/flutter/packages/main/LICENSE'),
    OpenSource('webview_flutter',
        'https://raw.githubusercontent.com/flutter/packages/main/LICENSE'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Open source licenses')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: list.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(list[index].name),
          onTap: () => navigateToLicence(context, list[index]),
        ),
        physics: const BouncingScrollPhysics(),
      ),
    );
  }

  /// [webview_flutter] só possui implementação para Android e iOS. Nas demais
  /// plataformas a licença é aberta no navegador externo.
  static bool get _supportsWebView =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);

  void navigateToLicence(BuildContext context, OpenSource licence) {
    if (!_supportsWebView) {
      launchUrl(
        Uri.parse(licence.link),
        mode: LaunchMode.externalApplication,
      );
      return;
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LicenseDetail(licence: licence),
      ),
    );
  }
}

class LicenseDetail extends StatefulWidget {
  final OpenSource licence;

  const LicenseDetail({super.key, required this.licence});

  @override
  State<LicenseDetail> createState() => _LicenseDetailState();
}

class _LicenseDetailState extends State<LicenseDetail> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.licence.link));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.licence.name),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
