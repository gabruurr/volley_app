import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
void dispose() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Placeholder());
  }
}
