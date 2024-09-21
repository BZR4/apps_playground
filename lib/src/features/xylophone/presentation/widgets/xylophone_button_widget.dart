import 'package:flutter/material.dart';

class XylophoneButtonWidget extends StatelessWidget {
  const XylophoneButtonWidget({
    super.key,
    required this.color,
    required this.assetId,
    required this.callBack,
  });

  final Color color;
  final int assetId;
  final void Function(int) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        hoverColor: Colors.black,
        onTap: () {
          callBack(assetId);
        },
        child: Ink(
          color: color,
        ),
      ),
    );
  }
}