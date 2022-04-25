import 'package:card_flip_listview/cuberto_clone/widgets/blend_mask.dart';
import 'package:card_flip_listview/cuberto_clone/widgets/bordered_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    this.onExit,
    required this.onHover,
  }) : super(key: key);

  final void Function(PointerExitEvent)? onExit;
  final Function(Widget) onHover;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MouseRegion(
              onHover: (_) {
                onHover(const CustomHeaderPointerChild(
                  imgUrl:
                      'https://c.tenor.com/_ufjl-UGx8gAAAAC/kakashi-naruto.gif',
                ));
              },
              onExit: onExit,
              child: const BlendMask(
                blendMode: BlendMode.difference,
                child: BorderedText(text: "WEBSITES"),
              )),
          MouseRegion(
              onHover: (_) {
                onHover(const CustomHeaderPointerChild(
                  imgUrl: 'https://c.tenor.com/aqP3GZjT924AAAAd/itachi.gif',
                ));
              },
              onExit: onExit,
              child: const BlendMask(
                blendMode: BlendMode.difference,
                child: BorderedText(text: "APPS"),
              )),
          MouseRegion(
              onHover: (_) {
                onHover(const CustomHeaderPointerChild(
                  imgUrl:
                      'https://c.tenor.com/paSN7hpqlIIAAAAd/madara-naruto-shippuden-madara.gif',
                ));
              },
              onExit: onExit,
              child: const BlendMask(
                blendMode: BlendMode.difference,
                child: BorderedText(text: "BRANDING"),
              )),
        ],
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
