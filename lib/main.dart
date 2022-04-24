import 'package:card_flip_listview/cuberto_clone/screens/mouse_following_ui_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scrollbarTheme: const ScrollbarThemeData(isAlwaysShown: false)),
      home: const MouseFollowingUiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

const totalPaths = 2;

class DynamicAnimationControllersScreen extends StatefulWidget {
  const DynamicAnimationControllersScreen({Key? key}) : super(key: key);

  @override
  State<DynamicAnimationControllersScreen> createState() =>
      _DynamicAnimationControllersScreenState();
}

class _DynamicAnimationControllersScreenState
    extends State<DynamicAnimationControllersScreen>
    with TickerProviderStateMixin {
  final List<AnimationController> controllers = [];

  @override
  void initState() {
    super.initState();
    // populate controllers
    for (int i = 0; i < totalPaths; i++) {
      controllers.add(AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          setState(() {});
          if (controllers[i].isCompleted) {
            print("$i completed");
          }
        }));
    }
  }

  @override
  void dispose() {
    for (final element in controllers) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => controllers[0].forward(),
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
