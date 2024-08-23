import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({super.key, this.buttonHeight, this.buttonWidth, this.buttonColor});


  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: buttonColor ?? Colors.blue,
      child: SizedBox(
        height: buttonHeight ?? 50,
        width: buttonWidth ?? MediaQuery.sizeOf(context).width,
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
