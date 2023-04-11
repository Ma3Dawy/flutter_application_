import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Conbox extends StatelessWidget {
  final String? hinttext;
  final String? counterText;
  TextEditingController controlar = TextEditingController();
  final IconData? icond;
  final String? Function(String?)? validator;
  final double? width;
  final double? high;
  final void Function()? onTap;
  // ignore: prefer_typing_uninitialized_variables
  final inputFormatters;

  final vaildkey = GlobalKey<FormState>();
  final bool? obscure;
  Conbox(
      {super.key,
      this.hinttext,
      required this.controlar,
      this.validator,
      this.icond,
      this.onTap,
      this.obscure,
      this.inputFormatters,
      this.counterText, this.width, this.high});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      width: width,
      height: high,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32),
       border: Border.all(color: Colors.grey),color: Colors.white),
      child: TextFormField(
        inputFormatters: inputFormatters,
        textAlign: TextAlign.justify,
        validator: validator,
        controller: controlar,
        obscureText: obscure ?? false,
        decoration: InputDecoration(
            counterText: counterText,
            border: InputBorder.none,
            hintText: "$hinttext",
            suffixIcon: IconButton(onPressed: onTap, icon: Icon(icond))),
      ),
    );
  }
}
