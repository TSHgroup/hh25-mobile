import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odpalgadke/common/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DefaultTextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextInputAction? textInputAction;
  final InputBorder? border;
  final Color? fillColor;
  final bool filled;
  final bool enabled;

  const DefaultTextInput({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction,
    this.border,
    this.fillColor,
    this.filled = true,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border:
            border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.grey.shade600),
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: accent, width: 2),
        ),
        filled: filled,
        fillColor: fillColor ?? background,
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.sp,
          horizontal: prefixIcon == null ? 16.sp : 8.sp,
        ),
        labelStyle: GoogleFonts.lato(color: Colors.grey.shade600),
        hintStyle: GoogleFonts.lato(color: Colors.grey.shade500),
      ),
    );
  }
}
