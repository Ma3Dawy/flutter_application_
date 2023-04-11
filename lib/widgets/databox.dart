// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/homescreen/homescreen.dart';

final phone = TextEditingController();
final email = TextEditingController();
final password = TextEditingController();
final repassword = TextEditingController();
final short = TextEditingController();
final salary = TextEditingController();
final vaildkey = GlobalKey<FormState>();
 bool visable = true;

// ignore: camel_case_types
class Databox extends StatefulWidget {
  const Databox({super.key});

  @override
  State<Databox> createState() => _DataboxState();
}

class _DataboxState extends State<Databox> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: vaildkey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              validator: (ph) {
                if (ph!.length >= 12) {
                  return "Your Phone number is Overflow";
                }
                // ignore: unrelated_type_equality_checks
                if (!ph.startsWith("010") &&
                    !ph.startsWith("012") &&
                    !ph.startsWith("011") &&
                    !ph.startsWith("015")) {
                  return "Your number is wrog ";
                }
                if (ph.isEmpty) {
                  return "Enter Your Number Please";
                }
                return null;
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: phone,
              decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: "Phone number",
                  counterText: "0/14"),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              validator: (e) {
                if (!e!.contains("@")) {
                  return "Your Email is missing @";
                }
                if (!e.contains(".com")) {
                  return "Your Email is missing .com";
                }
                if (e.isEmpty) {
                  return "Please Enter Your Email";
                }
                return null;
              },
              controller: email,
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Email",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                      validator: (sh) {
                        if (sh!.isEmpty) {
                          return "Please Enter your short story";
                        }
                        if (sh.length >= 30) {
                          return "Your char is overflow";
                        }

                        return null;
                      },
                      controller: short,
                      maxLines: 5,
                      decoration: const InputDecoration(
                          hintText: "Life Story",
                          border: OutlineInputBorder())
                          ),
                          
                  const SizedBox(height: 10),
                  const Text("Keep it short,this is just a demo")
                ],
              )),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (s) {
                  if (s!.isEmpty) {
                    return "Please enter your salry";
                  }
                  return null;
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: salary,
                decoration: const InputDecoration(
                    hintText: "Salary",
                    border: OutlineInputBorder(),
                    suffixText: "LE")),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  validator: (p) {
                    if (p!.length >= 8) {
                      return "Your Password is Overflow";
                    }
                    if (p.isEmpty) {
                      return "Please Enter Your Password";
                    }
                    return null;
                  },
                  controller: password,
                  obscureText: visable,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visable = !visable;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye))),
                ),
                const SizedBox(height: 10),
                const Text("No more Than 8 characters")
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                // ignore: unrelated_type_equality_checks
                if (value!.length >= 8) {
                  return "Your Password is Overflow";
                }
                // ignore: unrelated_type_equality_checks
                if (value != password.text) {
                  return "Your password is not the same";
                }
                if (value.isEmpty) {
                  return "Please Enter Your Password";
                }
                return null;
              },
              controller: repassword,
              obscureText: visable,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visable = !visable;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye)),
                  hintText: "Re-type Password"),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                if (vaildkey.currentState!.validate() == true) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) =>  const Homescreen()),
                      // ignore: avoid_types_as_parameter_names
                      (Route) => false);
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text("Submit"))
        ],
      ),
    );
  }
}
