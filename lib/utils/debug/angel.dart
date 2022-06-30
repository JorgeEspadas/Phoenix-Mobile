import 'package:flutter/material.dart';
import 'package:phoenix_mobile/utils/widgets/appbar.dart';

class AngelDebugView extends StatefulWidget {
  const AngelDebugView({Key? key}) : super(key: key);

  @override
  State<AngelDebugView> createState() => _AngelDebugViewState();
}

class _AngelDebugViewState extends State<AngelDebugView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(title: 'Angel - Dev'),
      body: Container(),
    );
  }
}
