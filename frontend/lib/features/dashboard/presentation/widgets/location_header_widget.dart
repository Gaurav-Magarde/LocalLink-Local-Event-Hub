import 'package:flutter/material.dart';
import 'package:frontend/core/theme/colors.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Location",style: Theme.of(context).textTheme.titleMedium,),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,color: EColors.primary,),
                  SizedBox(width: 4,),
                  Text("Bhopal,Madhya Pradesh",style: Theme.of(context).textTheme.labelLarge,),
                ],
              ),

            ],
          ),
          Icon(
            Icons.notifications
          )
        ],

      ),
    );
  }
}
