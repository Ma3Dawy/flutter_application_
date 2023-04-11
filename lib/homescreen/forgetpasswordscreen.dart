import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/countrybox.dart';

class Forgetscreen extends StatelessWidget {
  const Forgetscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drower(),
    body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Countrybox()
      ],
    )
    );
  }
}
