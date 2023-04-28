import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );

void navigateAndFinishCurrentOnly(
    context,
    widget,
    ) =>
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );



/////////////////////////////////////

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required String label,
  IconData? prefixIcon,
  IconData? suffixIcon,
  onSubmit,
  onChange,
  onTap,
  required validator,
  function,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                ),
                onPressed: function,
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );

Widget designedFormField({
  bool allowMultiLines = false,
  bool readOnly = false,
  fontColor,
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  bool textDirectionRight = false,
  required String? label,
  IconData? prefixIcon,
  IconData? suffixIcon,
  onSubmit,
  onChange,
  onTap,
  required validator,
  function,
  Color? borderColor,
}) =>
    TextFormField(
      readOnly: readOnly,
      maxLines: allowMultiLines ? null : 1,
      style: TextStyle(
        color: fontColor != null ? fontColor : Colors.black,
      ),
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      obscureText: isPassword,
      validator: validator,
      textDirection: textDirectionRight ? TextDirection.rtl : TextDirection.ltr,
      textAlign: textDirectionRight ? TextAlign.right : TextAlign.left,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          color: fontColor != null ? fontColor : Colors.black,
        ),
        labelStyle: TextStyle(
          color: fontColor != null ? fontColor : Colors.black,
        ),
        hintStyle: TextStyle(
          color: fontColor != null ? fontColor : Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: borderColor != null ? borderColor : Colors.black26,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: borderColor != null ? borderColor : Colors.black26,
            width: 2.0,
          ),
        ),
        labelText: label,
        prefixIcon: Icon(
          prefixIcon,
          color: fontColor != null ? fontColor : Colors.black,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                  color: fontColor != null ? fontColor : Colors.black,
                ),
                onPressed: function,
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required String text,
  required Function function,
  bool isUpperCase = true,
  double radius = 0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        /*()
        {
          function();
          }*/
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );


Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );
