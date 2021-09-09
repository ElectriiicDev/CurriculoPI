import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Patos De Minas MG, Brasil',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Telefone: (34)9 9816-2029',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'danielpereira@unipam.edu.br',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
