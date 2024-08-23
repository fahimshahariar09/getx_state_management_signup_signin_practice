import 'package:flutter/material.dart';
class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key, required this.phoneController,});

  final TextEditingController phoneController;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneController,
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
          labelText: "Phone"
      ),
      validator: (value){
        if(value=="" || value==null){
          return "phone can't be empty";
        }
        return null;
      },
    );
  }
}
