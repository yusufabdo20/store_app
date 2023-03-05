// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class CustomTextFormFeild extends StatelessWidget {
//   const CustomTextFormFeild({super.key});

//   @override
//   Widget build(BuildContext context) {
// //     Widget buildFormFieldText({
// //   TextEditingController? controller,
// //   required String labelText,
// //   String? hintText,
// //   TextInputType? keyboardType,
// //   IconData? prefixIcon,
// //   Color prefixIconColor = Colors.black,
// //   String? Function(String?)? validate,
// //   IconData? suffix,
// //   Color? suffixColor = Colors.black,
// //   suffixPressed, // Function
// //   bool isSecure = false,
// //   onSubmit,
// //   onChange,
// //   Function()? onTap,
// //   bool isClickable = true,
// //   Color backgroundOfTextFeild = Colors.white,
// //   Color notFocusedBorder = Colors.white,
// //   Color focusedBorder = Colors.black,
// // }) =>
//     TextFormField(
//         obscureText: isSecure,
//         validator: validate,
//         controller: controller,
//         decoration: InputDecoration(
//           floatingLabelBehavior: FloatingLabelBehavior.never,
//           filled: true,
//           fillColor: backgroundOfTextFeild,
//           border: const OutlineInputBorder(
//               // borderSide: BorderSide(width: 3, color: Colors.yellowAccent),
//               borderRadius: BorderRadius.all(Radius.circular(16))),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 0, color: notFocusedBorder),
//               borderRadius: BorderRadius.all(Radius.circular(16))),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16.0),
//             borderSide: BorderSide(color: focusedBorder, width: 2),
//           ),
//           labelText: labelText,
//           labelStyle: const TextStyle(
//             fontSize: 16,
//             fontFamily: "JostBold",
//           ),
//           hintText: hintText,
//           prefixIcon: Icon(prefixIcon, color: prefixIconColor),
//           suffixIcon: IconButton(
//             onPressed: suffixPressed,
//             icon: Icon(suffix, color: suffixColor),
//           ),
//         ),
//         keyboardType: keyboardType,
//         onFieldSubmitted: onSubmit,
//         onChanged: onChange,
//         onTap: onTap,
//         enabled: isClickable);
// ;
//   }
// }

import 'package:flutter/material.dart';

Widget buildFormFieldText({
  TextEditingController? controller,
  required String labelText,
  String? hintText,
  TextInputType? keyboardType,
  IconData? prefixIcon,
  Color prefixIconColor = Colors.black,
  String? Function(String?)? validate,
  IconData? suffix,
  Color? suffixColor = Colors.black,
  suffixPressed, // Function
  bool isSecure = false,
  onSubmit,
  onChange,
  Function()? onTap,
  bool isClickable = true,
  Color backgroundOfTextFeild = Colors.white,
  Color notFocusedBorderColor = Colors.white,
  Color focusedBorderColor = Colors.black,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
          obscureText: isSecure,
          validator: validate,
          controller: controller,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle:TextStyle(color: focusedBorderColor , fontWeight: FontWeight.bold ,fontSize: 22) ,
            filled: true,
            fillColor: backgroundOfTextFeild,
            border: const OutlineInputBorder(
                // borderSide: BorderSide(width: 3, color: Colors.yellowAccent),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: notFocusedBorderColor),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: focusedBorderColor, width: 2),
            ),
            labelText: labelText,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontFamily: "JostBold",
            ),
            hintText: hintText,
            prefixIcon: Icon(prefixIcon, color: prefixIconColor),
            suffixIcon: IconButton(
              onPressed: suffixPressed,
              icon: Icon(suffix, color: suffixColor),
            ),
          ),
          keyboardType: keyboardType,
          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          onTap: onTap,
          enabled: isClickable),
    );
