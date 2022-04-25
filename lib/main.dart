import 'package:card_flip_listview/cuberto_clone/bloc/pointer_cubit.dart';
import 'package:card_flip_listview/cuberto_clone/screens/mouse_following_ui_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PointerCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scrollbarTheme: const ScrollbarThemeData(isAlwaysShown: false)),
        home: const MouseFollowingUiScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
