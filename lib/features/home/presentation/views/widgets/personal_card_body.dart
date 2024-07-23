import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/age_manipulator_icon_button.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/personal_picture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalCardBody extends StatefulWidget {
  PersonalCardBody({super.key});
  @override
  State<PersonalCardBody> createState() => _PersonalCardBodyState();
}

class _PersonalCardBodyState extends State<PersonalCardBody> {
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PersonalPicture(),
          const Text(
            kMyName,
            style: TextStyle(fontSize: 24, fontFamily: 'Sectra'),
          ),
          const Opacity(
            opacity: 0.7,
            child: Text(
              kMyJob,
              style: Styles.textStyle24,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pin_drop_outlined,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Syria , ', style: Styles.textStyle20),
              Text('Damascus', style: Styles.textStyle20),
            ],
          ),
          Text('$age years old', style: Styles.textStyle20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ageManipulator(
                () {
                  setState(() {
                    age += 1;
                  });
                },
                Icons.plus_one,
              ),
              ageManipulator(
                () {
                  setState(() {
                    age = 22;
                  });
                },
                Icons.restart_alt,
              ),
              ageManipulator(
                () {
                  age > 0
                      ? setState(() {
                          age -= 1;
                        })
                      : age = 0;
                },
                Icons.exposure_minus_1,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Get in touch', style: Styles.textStyle24)],
          ),
          const Divider(
            thickness: 2,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
              ),
              Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue,
              ),
              Icon(
                Icons.email,
                color: Colors.red,
                size: 28,
              ),
            ],
          )
        ],
      ),
    );
  }
}
