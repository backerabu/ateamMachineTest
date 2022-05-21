import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_switch.dart';
import 'switch_row.dart';

class ListSwitchItem extends StatefulWidget {
  String title;
  ListSwitchItem(this.title);
  @override
  _ListSwitchItemState createState() => _ListSwitchItemState();
}

class _ListSwitchItemState extends State<ListSwitchItem> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SwitchRow(
        title: widget.title,
        onValueChanged: (v) {
          setState(() {
            _enabled = v;
          });
        },
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "Order Updates",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "Shipping Updates",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "Promotions",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "Offers",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "News",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "Messages",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: AnimatedSwitcher(
          // opacity: _enabled ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: _enabled
              ? Column(
                  children: [
                    SwitchRow(
                      title: "New Arrivals",
                      onValueChanged: (v) {},
                    ),
                  ],
                )
              : Container(),
        ),
      )
    ]);
  }
}
