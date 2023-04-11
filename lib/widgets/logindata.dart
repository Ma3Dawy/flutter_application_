import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen/forgetpasswordscreen.dart';
import 'package:flutter_application_1/homescreen/homescreen.dart';
import 'package:flutter_application_1/homescreen/signup.dart';
import 'package:flutter_application_1/widgets/datacon.dart';

final username = TextEditingController();
final password = TextEditingController();
final _formkey = GlobalKey<FormState>();
bool visibale = true;

class Logindata extends StatefulWidget {
  const Logindata({super.key});

  @override
  State<Logindata> createState() => _LogindataState();
}

class _LogindataState extends State<Logindata> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          Conbox(
            controlar: username,
            width: 300,
            high: 70,
            hinttext: "Username",
            obscure: false,
            validator: (p0) {
              if (p0!.isEmpty) {
                return "Please Enter Your Username";
              }
              return null;
            },
          ),
          Conbox(
            controlar: password,
            width: 300,
            high: 70,
            counterText: "0/8",
            hinttext: "Password",
            obscure: visibale,
            validator: (p) {
              if (p!.length >= 8) {
                return "Your Password is Overflow";
              }
              if (p.isEmpty) {
                return "please Enter Your Password";
              }
              return null;
            },
            onTap: () {
              setState(() {});
              visibale = !visibale;
            },
            icond: Icons.visibility,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Forgetscreen()));
              },
              child: const Text("Forgot Password",style: TextStyle(color: Colors.black),)),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate() == true) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const Homescreen()),
                      (route) => false);
                }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text("Login",style: TextStyle(color: Colors.black),)),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const Signup()),
                  (route) => false);
            },
            style: const ButtonStyle(
                iconSize: MaterialStatePropertyAll(50),
                backgroundColor: MaterialStatePropertyAll(Colors.white)),
            child: const Text("Creat Account",style: TextStyle(color: Colors.black,))
          )
        ],
      ),
    );
  }
}
