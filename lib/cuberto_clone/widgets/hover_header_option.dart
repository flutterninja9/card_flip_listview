import 'package:card_flip_listview/cuberto_clone/widgets/blend_mask.dart';
import 'package:card_flip_listview/cuberto_clone/widgets/bordered_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HoverHeaderOption extends StatelessWidget {
  const HoverHeaderOption({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onHover,
    required this.onExit,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final Function(Widget) onHover;
  final void Function(PointerExitEvent p1)? onExit;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) {
        onHover(CustomHeaderPointerChild(imgUrl: imageUrl));
      },
      onExit: onExit,
      child: BlendMask(
        blendMode: BlendMode.difference,
        child: BorderedText(text: title),
      ),
    );
  }
}

class CustomHeaderPointerChild extends StatelessWidget {
  const CustomHeaderPointerChild({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
      ),
    );
  }
}
