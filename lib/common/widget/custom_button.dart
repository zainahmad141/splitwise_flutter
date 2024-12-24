import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const CustomButton({super.key, required this.btnName, this.icon, this.bgColor, this.textStyle, this.callback});



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: bgColor
        ),
        child: icon!=null ?  Row(
          children: [
            icon!,
            Text(btnName, style: textStyle,)
          ],
        ) : Center(
          child: Text(
            btnName,
            style:  const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
