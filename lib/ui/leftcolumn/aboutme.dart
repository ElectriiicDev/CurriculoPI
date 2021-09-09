import 'package:curriculo/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

// ignore: must_be_immutable
class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'about me'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            fontSize: 50,
                            color: sizingInformation.deviceScreenType ==
                                    DeviceScreenType.desktop
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            Text(
              'Oi sou o Daniel e sou estudante de Sistemas de Informação na UNIPAM, Tenho 19 anos e moro em Patos de Minas Gerais, no meu tempo livre gosto de jogar e ficar ouvindo musica, e minha inspiração para fazer sistemas de informação é que eu acho incrivel o desenvolvimento de qualquer aplicativo/site com linhas de codigos. ',
              textAlign:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? TextAlign.justify
                      : TextAlign.left,
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? Colors.white
                      : primaryColor,
                  fontWeight: FontWeight.w100),
            )
          ],
        ));
  }
}
