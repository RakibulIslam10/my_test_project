import 'package:flutter/material.dart';

class Mypop extends StatelessWidget {
  const Mypop({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) => [
      PopupMenuItem(child: Text("Setting"),),
      PopupMenuItem(child: Text("More"),),
      PopupMenuItem(child: Text("About"),),
      PopupMenuItem(child: Text("Exit"),),

    ],);
  }
}
