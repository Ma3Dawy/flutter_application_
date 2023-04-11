import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/databox.dart';

import '../widgets/drawer.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
     appBar:  AppBar(
          title: const Text(" Sing up "),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        drawer:const Drower(),      
        body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          Databox(),
        ],
      ),
      
    );
  }
}