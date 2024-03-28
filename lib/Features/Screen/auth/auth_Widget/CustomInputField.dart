// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: non_constant_identifier_names, use_super_parameters, file_names

import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String TextType;
  final bool suffixIcon;
  Function(String)? onChanged;

  CustomInputField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.TextType,
    required this.suffixIcon,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 338,
      height: 90,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.labelText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Expanded(
            child: Container(
              width: 318,
              height: 60,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: TextFormField(
                onChanged: widget.onChanged,
                obscureText:
                    widget.TextType == "Password" ? _obscureText : false,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  suffixIcon: widget.suffixIcon
                      ? IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.remove_red_eye
                                : Icons.visibility_off_outlined,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        )
                      : null,
                  hintText: widget.hintText,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
