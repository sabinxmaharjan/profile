import 'package:flutter/material.dart';
import 'package:login/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  // final String inputText;
  final String hintText;
  final Color borderColor;
  final bool obsecureText;
  final TextAlign textAlign;
  final Color fillColor;

  const CustomTextField(
      {Key key,
      // this.inputText,
      this.borderColor,
      this.hintText,
      this.textAlign, 
      this.obsecureText,
      this.fillColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
            TextField(
                obscureText: obsecureText,
                textAlign: textAlign,
                
                decoration: InputDecoration(
                  fillColor: fillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColor.primaryBlue),
                  ),
                  hintText: hintText,
                )),
          ],
        ),
      ),
    );
  }
}
