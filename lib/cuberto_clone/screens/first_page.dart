import 'package:card_flip_listview/cuberto_clone/widgets/hover_header_option.dart';
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
          HoverHeaderOption(
            title: 'WEBSITES',
            imageUrl: 'https://c.tenor.com/_ufjl-UGx8gAAAAC/kakashi-naruto.gif',
            onHover: onHover,
            onExit: onExit,
          ),
          HoverHeaderOption(
            title: 'APPS',
            imageUrl: 'https://c.tenor.com/aqP3GZjT924AAAAd/itachi.gif',
            onHover: onHover,
            onExit: onExit,
          ),
          HoverHeaderOption(
            title: 'BRANDING',
            imageUrl:
                'https://c.tenor.com/paSN7hpqlIIAAAAd/madara-naruto-shippuden-madara.gif',
            onHover: onHover,
            onExit: onExit,
          ),
        ],
      ),
    );
  }
}
