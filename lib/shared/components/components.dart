import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  required Function() onPressed,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField(
        {required TextEditingController controller,
        required TextInputType type,
        ValueChanged<String>? onSubmit,
        ValueChanged<String>? onChanged,
        bool isPassword = false,
        required FormFieldValidator<String>? validate,
        required String label,
        required IconData prefix,
        IconData? suffix,
        Function()? suffixPressed,
        GestureTapCallback? onTap}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onSubmit,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: IconButton(
          icon: Icon(suffix),
          onPressed: suffixPressed,
        ),
        border: const OutlineInputBorder(),
      ),
    );
