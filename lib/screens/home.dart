import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volley_app/widgets/home_widgets/home_header.dart';
import 'package:volley_app/widgets/home_widgets/start_button.dart';
import 'package:volley_app/widgets/home_widgets/teams_section.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF00ADC3),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            const HomeHeader(),
            const Spacer(flex: 3),
            const TeamsSection(),
            const Spacer(flex: 2),
            const StartButton(),
            const Spacer(flex: 3),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color.fromARGB(255, 43, 74, 142),
          onPressed: () {},
          child: Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}
