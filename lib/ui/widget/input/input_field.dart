import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.label,
    this.inputType,
    this.enabled = true,
    this.expand = false,
    this.onTap,
    this.onSaved,
    this.textInputAction,
    this.onEditingComplete,
    required this.onChanged,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.readOnly = false,
    this.validator,
    this.autofills
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final TextInputType? inputType;
  final bool enabled;
  final Function()? onTap;
  final ValueChanged<String>? onFieldSubmitted;
  final bool expand;
  final bool obscureText;
  final Function(String?)? onSaved;
  final ValueChanged<String> onChanged;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onEditingComplete;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final Iterable<String>? autofills;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        label == null ?
        SizedBox.shrink() :
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label ?? "",
                style: getRegularStyle(
                  color: ColorManager.labelBlack, 
                  fontSize: 14
                ),
              ),
              Visibility(
                visible: false,
                child: PopupMenuButton(
                  onSelected: (value) {
                    
                  },
                  child: Row(
                    children: [
                      Text(
                        "px",
                        style: getRegularStyle(
                          color: ColorManager.labelBlack, 
                          fontSize: 14
                        ),
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 14,
                      )
                    ],
                  ),
                  itemBuilder: (_) => [
                    
                  ]
                ),
              )
            ],
          ),
        ),
        TextFormField(
          cursorColor: ColorManager.primary,
          enabled: enabled,
          obscureText: obscureText,
          onChanged: onChanged,
          onTap: onTap,
          autofillHints: autofills,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          controller: controller,
          onSaved: onSaved,
          readOnly: readOnly,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onFieldSubmitted: onFieldSubmitted,
          onEditingComplete: onEditingComplete,
          textDirection: TextDirection.ltr,
          keyboardType: inputType,
          style: getRegularStyle(color: ColorManager.labelBlack, fontSize: 16),
          decoration: InputDecoration(
            errorStyle: getRegularStyle(color: ColorManager.danger, fontSize: 14),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorManager.dividerColor,
                width: 0.5
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorManager.dividerColor,
                width: 0.5
              )
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorManager.dividerColor,
                width: 0.5
              )
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorManager.danger,
                width: 0.5
              )
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorManager.danger,
                width: 0.5
              )
            ),
            hintStyle: getMediumStyle(
                color: ColorManager.greyAlt, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
