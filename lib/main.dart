import 'package:curriculo/ui/left_column.dart';
import 'package:curriculo/ui/leftcolumn/aboutme.dart';
import 'package:curriculo/ui/leftcolumn/height20.dart';
import 'package:curriculo/ui/leftcolumn/personal_avatar.dart';
import 'package:curriculo/ui/leftcolumn/skill_info.dart';
import 'package:curriculo/ui/right_column.dart';
import 'package:curriculo/ui/rightcolumn/content_widget.dart';
import 'package:curriculo/ui/rightcolumn/name_widget.dart';
import 'package:curriculo/ui/rightcolumn/personal_info.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

final primaryColor = Colors.black;
final backgroundColor = Color(0xFFEDF1F4);
void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => newMethod(),
  ));
}

MyApp newMethod() => MyApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? DesktopUI(sizingInformation)
              : MobileUI(sizingInformation);
        },
      )),
    ));
  }

  // ignore: non_constant_identifier_names
  Column MobileUI(SizingInformation sizingInformation) {
    return Column(
      children: [
        PersonalAvatar(),
        Height20(),
        AboutMe(
          sizingInformation: sizingInformation,
        ),
        Height20(),
        SkillInfo(sizingInformation: sizingInformation),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [NameWidget(sizingInformation), PersonalInfo()],
            )
          ],
        ),
        ContentWidget(
          contenTitle: 'Formação Escolar',
          sizingInformation: sizingInformation,
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  IntrinsicHeight DesktopUI(SizingInformation sizingInformation) {
    return IntrinsicHeight(
        child: Container(
      color: backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeftColumn(sizingInformation),
          RightColumn(sizingInformation)
        ],
      ),
    ));
  }
}
