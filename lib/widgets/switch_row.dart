import 'package:flutter/material.dart';

import 'custom_switch.dart';

class SwitchRow extends StatefulWidget {
  String title;
  bool value;
  ValueChanged<bool> onValueChanged;
  SwitchRow({this.title, this.value, this.onValueChanged});
  @override
  _SwitchRowState createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.brown),
          ),
          CustomSwitch(
            value: _enabled,
            onChanged: (bool val) {
              setState(() {
                _enabled = val;
                widget.onValueChanged(val);
              });
            },
          ),
        ],
      ),
    );
  }
}
