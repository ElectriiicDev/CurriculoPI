import 'package:curriculo/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'leftcolumn/aboutme.dart';
import 'leftcolumn/height20.dart';
import 'leftcolumn/personal_avatar.dart';
import 'leftcolumn/skill_info.dart';

class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  LeftColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 1,
      color: primaryColor,
      child: Column(
        children: [
          PersonalAvatar(),
          Height20(),
          AboutMe(
            sizingInformation: sizingInformation,
          ),
          Height20(),
          SkillInfo(
            sizingInformation: sizingInformation,
          )
        ],
      ),
    );
  }
}
