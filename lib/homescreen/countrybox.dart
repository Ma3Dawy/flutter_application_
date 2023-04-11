import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/datacon.dart';

class Countrybox extends StatelessWidget {
  Countrybox({super.key});
  final phone = TextEditingController();
  final validkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: validkey,
      child: Column(
        children: [
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIbYzDjnJ--xM6Fkg8Ia5CQXZt8BCqC1rSDHxDFJ2u5OEdyNm7fArufDFxYajYMxo2b-g&usqp=CAU"),
           const SizedBox(height: 20,),   
          const Center(
              child: Text(
            "Yall Delivery Restrurant",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text("Please Enter Your Phone Number to send code")),
          const SizedBox(height: 20,),   
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CountryCodePicker(
                        alignLeft: false,
                        showCountryOnly: false,
                        showFlag: false,
                        showOnlyCountryWhenClosed: false,
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 2,
                child: Conbox(
                  controlar: phone,
                  hinttext: "",
                  counterText: "0/11",
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (mo) {
                    if (mo!.isEmpty) {
                      return "Please Enter Your Number";
                    }
                    return null;
                  },
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                validkey.currentState!.validate() == true;
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)),
              child: const Text("Send"))
        ],
      ),
    );
  }
}
