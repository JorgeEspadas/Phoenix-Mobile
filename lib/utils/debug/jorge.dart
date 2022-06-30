import 'package:flutter/material.dart';
import 'package:phoenix_mobile/utils/widgets/appbar.dart';

class JorgeDebugView extends StatefulWidget {
  const JorgeDebugView({Key? key}) : super(key: key);

  @override
  State<JorgeDebugView> createState() => _JorgeDebugViewState();
}

class _JorgeDebugViewState extends State<JorgeDebugView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(title: 'Modo Desarrollo'),
      body: Container(),
    );
  }
}
