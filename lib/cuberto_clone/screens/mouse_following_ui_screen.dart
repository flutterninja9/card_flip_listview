import 'package:card_flip_listview/cuberto_clone/bloc/pointer_cubit.dart';
import 'package:card_flip_listview/cuberto_clone/bloc/pointer_state.dart';
import 'package:card_flip_listview/cuberto_clone/screens/first_page.dart';
import 'package:card_flip_listview/cuberto_clone/screens/second_page.dart';
import 'package:card_flip_listview/cuberto_clone/widgets/pointer_state_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MouseFollowingUiScreen extends HookWidget {
  const MouseFollowingUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pointerOffset = useState(const Offset(0, 0));

    return Scaffold(
      body: MouseRegion(
        onHover: (data) {
          pointerOffset.value = Offset(data.position.dx, data.position.dy);
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                top: pointerOffset.value.dy,
                left: pointerOffset.value.dx,
                child: BlocBuilder<PointerCubit, PointerState>(
                  builder: (context, state) {
                    return PointerStateWidget(state: state);
                  },
                ),
              ),
              PageView(
                scrollDirection: Axis.vertical,
                children: [
                  FirstPage(
                    onExit: (_) => context.read<PointerCubit>().onExit(),
                    onHover: (Widget child) =>
                        context.read<PointerCubit>().onHoverHeader(child),
                  ),
                  const SecondPage(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
