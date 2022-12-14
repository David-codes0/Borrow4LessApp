import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/material.dart';


class CustomTextInputField extends StatefulWidget {
  const CustomTextInputField({
    this.onTap,
    this.ispassword = false,
    this.fieldlabel,
    this.maxlines,
    this.textinputtype,
    this.maxlength,
    this.fieldcurve,
    this.bordercolor,
    this.topmargin,
    this.controller,
    this.onChanged,
    this.isEnabled,
    this.autofocus,
    this.errorText,
    this.textCapitalization,
    Key? key,
  }) : super(key: key);

  final Function()? onTap;
  final Function(String value)? onChanged;
  final bool ispassword;
  final bool? isEnabled;
  final String? fieldlabel;
  final TextInputType? textinputtype;
  final int? maxlines;
  final int? maxlength;
  final double? fieldcurve;
  final double? topmargin;
  final Color? bordercolor;
  final bool? autofocus;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final String? errorText;
  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: widget.topmargin ?? 20),
      child: GestureDetector(
        onTap: widget.onTap ?? () {},
        child: TextField(
          autofocus: widget.autofocus ?? false,
          enabled: widget.isEnabled,
          maxLines: widget.maxlines ?? 1,
          maxLength: widget.maxlength,
          controller: widget.controller,
          onChanged: widget.onChanged ?? (value) {},
          obscureText: widget.ispassword ? showpassword : false,
          keyboardType: widget.textinputtype ?? TextInputType.text,
          textCapitalization:
              widget.textCapitalization ?? TextCapitalization.none,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.bordercolor ?? GlobalVariables.lightBlue,
              ),
              borderRadius: BorderRadius.circular(widget.fieldcurve ?? 10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.bordercolor ?? GlobalVariables.lightBlue,
              ),
              borderRadius: BorderRadius.circular(widget.fieldcurve ?? 10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.bordercolor ?? GlobalVariables.redColor,
              ),
              borderRadius: BorderRadius.circular(widget.fieldcurve ?? 10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.bordercolor ?? GlobalVariables.redColor,
              ),
              borderRadius: BorderRadius.circular(widget.fieldcurve ?? 10),
            ),
            errorText: widget.errorText,
            suffix: widget.ispassword
                ? IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    iconSize: 20,
                    onPressed: () {
                      setState(() {
                        showpassword = !showpassword;
                      });
                    },
                    icon: showpassword
                        ? const Icon(
                            Icons.visibility_off,
                            color: GlobalVariables.lightBlue,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: GlobalVariables.lightBlue,
                          ),
                  )
                : const SizedBox(),
            hintText: widget.fieldlabel ?? ' ',

            // hintText: widget.hinttext ?? widget.fieldlabel ?? '',
            hintStyle: GlobalVariables.paragraph1.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xff0d0907).withOpacity(0.5),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
