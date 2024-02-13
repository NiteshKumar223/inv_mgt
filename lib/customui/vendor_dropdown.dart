import 'package:flutter/material.dart';

import '../utils/colors.dart';

const List<String> vendorlist = <String>['Select Vendor','Vendor 1', 'Vendor 2', 'Vendor 3','Vendor 4'];
class VendorDropdown extends StatefulWidget {
  const VendorDropdown({super.key});

  @override
  State<VendorDropdown> createState() => _VendorDropdownState();
}

class _VendorDropdownState extends State<VendorDropdown> {

  String dropdownValue = vendorlist.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: clrtxt),
      isExpanded: true,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: vendorlist.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}