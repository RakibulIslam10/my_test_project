import 'package:flutter/material.dart';

import 'Frots.dart';
import 'Gaget.dart';
import 'Medicine.dart';
import 'vagetable.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      apple(),
      potato(),
      napa(),
      headphone(),
    ]);
  }
}
