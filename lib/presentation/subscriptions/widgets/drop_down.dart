import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';

class SubscriptionDropDown extends StatefulWidget {
  const SubscriptionDropDown({Key? key}) : super(key: key);

  @override
  State<SubscriptionDropDown> createState() => _SubscriptionDropDownState();
}

class _SubscriptionDropDownState extends State<SubscriptionDropDown> {
  final List<String> items = [
    'Most relevent',
    'New activity',
    'A-Z',
  ];

  String? selectedValue = 'Most relevent';

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      dropdownOverButton: true,
      underline: const SizedBox(),
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
