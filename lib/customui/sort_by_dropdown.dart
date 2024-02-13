import 'package:flutter/material.dart';
import 'package:inv_mgt/utils/colors.dart';
const List<String> sortbylist = <String>['Select','Name', 'Cost Price', 'Selling Price','Notes'];
class SortByDropdown extends StatefulWidget {
  const SortByDropdown({super.key});

  @override
  State<SortByDropdown> createState() => _SortByDropdownState();
}

class _SortByDropdownState extends State<SortByDropdown> {
 
  String dropdownValue = sortbylist.first;
 
 
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
      items: sortbylist.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}