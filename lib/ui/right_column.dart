import 'package:curriculo/main.dart';
import 'package:curriculo/ui/rightcolumn/content_widget.dart';
import 'package:curriculo/ui/rightcolumn/name_widget.dart';
import 'package:curriculo/ui/rightcolumn/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RightColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  RightColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [NameWidget(sizingInformation), PersonalInfo()],
                ),
                ContentWidget(
                    contenTitle: 'Formação Escolar',
                    sizingInformation: sizingInformation),
              ],
            ),
          )),
    );
  }
}
