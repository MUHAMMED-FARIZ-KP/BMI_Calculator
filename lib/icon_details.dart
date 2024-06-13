import 'package:flutter/material.dart';
class iconDetails extends StatelessWidget {
  final IconData icon;
  final String label;
  iconDetails({required this.icon,required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF8D8F9E),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
