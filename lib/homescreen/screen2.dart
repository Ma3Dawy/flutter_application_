import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {

return ListView(
      children: [
            CircleAvatar(child:           Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIbYzDjnJ--xM6Fkg8Ia5CQXZt8BCqC1rSDHxDFJ2u5OEdyNm7fArufDFxYajYMxo2b-g&usqp=CAU"),)
         ],
    );
  }
}
