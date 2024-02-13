import 'package:flutter/material.dart';

import '../utils/colors.dart';


const List<String> productlist = <String>['Select product','product 1', 'product 2', 'product 3','product 4'];
class ProductNameDropdown extends StatefulWidget {
  const ProductNameDropdown({super.key});

  @override
  State<ProductNameDropdown> createState() => _ProductNameDropdownState();
}

class _ProductNameDropdownState extends State<ProductNameDropdown> {
  String dropdownValue = productlist.first;

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
      items: productlist.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}