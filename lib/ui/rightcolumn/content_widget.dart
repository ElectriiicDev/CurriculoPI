import 'package:curriculo/main.dart';
import 'package:curriculo/ui/rightcolumn/title_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.contenTitle,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String contenTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding:
              sizingInformation.deviceScreenType != DeviceScreenType.desktop
                  ? const EdgeInsets.symmetric(horizontal: 16)
                  : const EdgeInsets.all(0),
          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Column(
                children: [
                  Text(
                    contenTitle.toUpperCase(),
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 50,
                        color: Colors.black87),
                  )
                ],
              )),
        ),
        TitleDescriptionWidget(
            title: 'Escola Estadual Dona Guiomar De Melo - Patos De Minas',
            description: 'Iniciado: 2016 / Terminado: 2020',
            sizingInformation: sizingInformation),
        TitleDescriptionWidget(
            title: 'Centro universitario de Patos de Minas - Unipam',
            description:
                'Cursando: Sistemas de Informação/Iniciado: 2021/Termino: 2023',
            sizingInformation: sizingInformation)
      ],
    );
  }
}
