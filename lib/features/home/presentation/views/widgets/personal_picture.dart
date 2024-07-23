
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class PersonalPicture extends StatelessWidget {
  const PersonalPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerSize = screenWidth * 0.5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.white),
          ),
          child: ClipOval(
            child: Image.asset(
              AssetsData.kPersonalPicture,
              fit: BoxFit.cover,
              width: containerSize,
              height: containerSize,
            ),
          ),
        ),
      ],
    );
  }
}
