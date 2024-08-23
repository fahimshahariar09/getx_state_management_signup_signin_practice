import 'package:flutter/material.dart';
class ConframpassTextField extends StatelessWidget {
  const ConframpassTextField({super.key, required this.conframpassword,});

  final TextEditingController conframpassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: conframpassword,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: "ConframPassword"
      ),
      validator: (value){
        if(value=="" || value==null){
          return "Password can't be empty";
        }
        return null;
      },
    );
  }
}
