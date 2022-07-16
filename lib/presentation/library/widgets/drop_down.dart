import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  final List<String> items = [
    'Recently added',
    'A-Z',
  ];

  String? selectedValue = 'Recently added';

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      iconDisabledColor: kWhiteColor,
      iconEnabledColor: kWhiteColor,
      dropdownWidth: 118,
      selectedItemHighlightColor: kGreyItemColor,
      dropdownDecoration: const BoxDecoration(
        color: backgroundColor,
      ),
      hint: Text(
        selectedValue.toString(),
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: kWhiteColor,
        ),
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                    color: kWhiteColor,
                  ),
                ),
              ))
          .toList(),
      value: selectedValue,
      onChanged: (value) {
        setState(() {
          selectedValue = value as String;
        });
      },
      buttonHeight: 40,
      buttonWidth: 112,
      itemHeight: 40,
    );
  }
}
