// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({
    Key? key,
    this.marginTop,
    this.hint,
    this.textEditingController,
  }) : super(key: key);

  final double? marginTop;
  final String? hint;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop ?? 16),
      width: 250,
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
