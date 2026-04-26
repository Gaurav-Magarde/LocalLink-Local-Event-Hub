import 'package:flutter/cupertino.dart';

import '../../../../core/theme/colors.dart';

class AuthScreenHeader extends StatelessWidget {
  const AuthScreenHeader({
    super.key,
    required this.imagePath,
    required this.text,
    required this.textSpan,
  });
  final String imagePath;
  final String text;
  final String textSpan;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              imagePath,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: -30,
              left: 0,
              right: 0,

              child: Center(
                child: Text( text,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600, // Semi-bold looks premium
                      color: EColors.textPrimary, // Your dark navy variable// Gives a little breathing room between the two lines
                    ),
                  // Keeps it perfectly centered
                ),
              ),
            ),
          ],
        ),
        Text(
          textSpan,
          style: const TextStyle(
            fontSize: 20,
            fontWeight:
            FontWeight.bold, // Make the blue text slightly bolder
            color: EColors
                .accentPrimary, // Your bright sky blue variable!
          ),
        ),
      ],
    );
  }
}
