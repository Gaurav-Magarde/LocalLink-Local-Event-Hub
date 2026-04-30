import 'package:flutter/material.dart';


class HomeEventChips extends StatelessWidget {
  const HomeEventChips({
    super.key, required this.label, required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurStyle: BlurStyle.outer,
            blurRadius: 7,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8,),
          Text(label),
        ],
      ),
    );
  }
}
