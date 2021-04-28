import 'package:flutter/material.dart';

class InkButton extends StatelessWidget {
  final Widget child;
  InkButton({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: child,
        onTap: () {
          print(10);
        },
      ),
    );
  }
}
