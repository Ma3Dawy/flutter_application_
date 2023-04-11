import 'package:flutter/material.dart';

class Drower extends StatelessWidget {
  const Drower({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: DrawerHeader(
          child: ListView(
        children: [
          CircleAvatar(
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIbYzDjnJ--xM6Fkg8Ia5CQXZt8BCqC1rSDHxDFJ2u5OEdyNm7fArufDFxYajYMxo2b-g&usqp=CAU"),),
          const SizedBox(height: 20,),
          const ListTile(  
            title: Text("Delevery"),
            subtitle: Text("The Best Restruent Ever"),
            trailing: Icon(Icons.fastfood_sharp),
            leading:
            CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIbYzDjnJ--xM6Fkg8Ia5CQXZt8BCqC1rSDHxDFJ2u5OEdyNm7fArufDFxYajYMxo2b-g&usqp=CAU"),)),

          ],
      )),
    );
  }
}
