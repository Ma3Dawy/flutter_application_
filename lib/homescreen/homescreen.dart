import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen/loginscreen.dart';
import 'package:flutter_application_1/homescreen/screen2.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> lis = [const Loginscreen(),const Screen2()];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          ],
          currentIndex: count,
          onTap: (v) {
            setState(() {});
            v = count;
          },
        ),
        appBar:  AppBar(
          title: const Text("Home Screen"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        drawer:const Drower(),
        body: lis[0]);
  }
}
