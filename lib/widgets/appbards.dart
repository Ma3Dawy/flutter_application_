import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Appbarde extends StatelessWidget {
  Appbarde({super.key, this.colorr, this.iconn, this.child});
  final Color? colorr;
  final IconData? iconn;
  final localkeyy = GlobalKey<FormState>();
  // ignore: prefer_typing_uninitialized_variables
  final child;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: localkeyy,
      child: AppBar(
        title: child,
        leading: IconButton(
            onPressed: () {
              const Drower();
            },
            icon: Icon(iconn)),
        backgroundColor: colorr,
        centerTitle: true,
      ),
    );
  }
}
