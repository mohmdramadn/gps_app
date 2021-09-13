import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FocusNode focusNode;
  final String hint;
  final String label;
  final int maxLength;
  final TextInputAction textInputAction;
  final bool obscure;
  final bool autofocus;
  final bool enableinteractiveSelection;
  final bool passwordTrailingIcons;
  final bool autocorrect;
  final bool enableSuggestions;
  final Widget prefixIcon;
  final Function validator;
  final Function onChanged;
  final Function onEditingComplete;
  final Function onTap;
  final Widget suffixIcon;

  AppTextField({
    this.controller,
    this.keyboardType,
    this.hint,
    this.label,
    this.validator,
    this.obscure = false,
    this.textInputAction,
    this.autofocus = false,
    this.maxLength,
    this.focusNode,
    this.enableinteractiveSelection = true,
    this.onChanged,
    this.passwordTrailingIcons,
    this.prefixIcon,
    this.suffixIcon,
    this.onEditingComplete,
    this.onTap,
    this.autocorrect = false,
    this.enableSuggestions = false,
  });

  @override
  Widget build(BuildContext context) => Container(
    // height: ScreenUtil().setHeight(60).toDouble(),
    // setting the height value causes the unability to set a focus to a TextField!
    child: TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType,
      maxLines: 1,
      style: TextStyle(fontSize: 20),
      textInputAction: textInputAction,
      autofocus: autofocus,
      enableInteractiveSelection: enableinteractiveSelection,
      validator: validator,
      maxLength: maxLength,
      onSaved: (String value) {
        controller.text = value;
      },
      focusNode: focusNode,
      onFieldSubmitted: (String value) {
        FocusScope.of(context).nextFocus();
      },
      autocorrect: autocorrect,
      enableSuggestions: enableSuggestions,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        helperText: '',
        // helperStyle/fontSize should be always syncronised with errorStyle/fontSize!
        helperStyle: TextStyle(
          fontSize:16,
        ),
        // if the errorStyle/fontSize is different from helperStyle/fontSize,
        // it causes the jumping in the textfield during validation
        // should be always syncronised with helperStyle/fontSize!
        errorStyle: TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        hintText: hint,
        labelText: label,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: SizedBox(
          width: 20,
        ),
      ),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
    ),
  );
}
