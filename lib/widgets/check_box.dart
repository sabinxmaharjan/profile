import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  static bool checkedValue = false;
  final bool newValue;
  final String text;
  final Function setState;
  final Color color;

  const CustomCheckBox(
      {Key key, this.newValue, this.text, this.setState, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: checkedValue,
          onChanged: (newvalue) {
            setState(() {
              checkedValue = true;
            });
          },
        ),
        Text(
          'Remember me',
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
