import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/logindata.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
             body: ListView(
          scrollDirection: Axis.vertical,
      children:  const [
          SizedBox(height: 100,),
        Center(child: Text("Login Page",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:45 ),))
       //  Center(child: Text("Log in",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 50),)),
         ,SizedBox(height: 15,),
          Logindata()
        ],
        
    ) 
    );

  }
}
