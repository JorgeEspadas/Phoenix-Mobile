// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:phoenix_mobile/app/home/model.dart';
import 'package:phoenix_mobile/themes/phoenix.dart';
import 'package:phoenix_mobile/utils/debug/angel.dart';
import 'package:phoenix_mobile/utils/debug/jorge.dart';
import 'package:phoenix_mobile/utils/device.dart';
import 'package:phoenix_mobile/utils/widgets/appbar.dart';
import 'package:phoenix_mobile/utils/widgets/button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = HomeViewModel(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PhoenixTheme.COLOR_CLEAR_WHITE,
      appBar: PhoenixAppBar(title: 'Observatorio Mobile'),
      body: Container(
        child: Column(children: [
          PhoenixButton(
            label: 'Angel',
            onPress: () {
              Device.navigateToView(view: const AngelDebugView());
            },
          ),
          PhoenixButton(
            label: 'Jorge',
            onPress: () {
              Device.navigateToView(view: const JorgeDebugView());
            },
          ),
        ]),
      ),
    );
  }
}
