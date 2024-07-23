import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/personal_card_body.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PersonalCardBody(),
    );
  }
}