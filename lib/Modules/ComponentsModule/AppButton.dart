import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double height;
  final bool enabled;
  final Icon icon;

  AppButton(
      {@required this.label,
      this.onPressed,
      @required this.height,
      this.enabled = true,
      this.icon});

  @override
  Widget build(BuildContext context) => RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        child: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: enabled ? Colors.blue : Colors.grey[500],
          ),
          child: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: enabled ? Colors.blue : Colors.grey[500],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: icon,
                  ),
                  Text(
                    label.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        onPressed: onPressed,
      );
}
