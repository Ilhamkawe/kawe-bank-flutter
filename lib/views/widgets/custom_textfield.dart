import 'package:bank_kawe/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final bool obscure;
  final String label;
  final TextEditingController textEditingController;
  const CustomTextField({
    super.key,
    this.obscure = false,
    required this.label,
    required this.textEditingController,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          obscureText: widget.obscure,
          controller: widget.textEditingController,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
        ),
      ],
    );
  }
}
