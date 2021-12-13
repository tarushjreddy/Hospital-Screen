// ignore: file_names
// ignore: file_names
// ignore_for_file: unused_import, file_names, prefer_const_constructors, duplicate_ignore, unnecessary_new
// ignore: prefer_const_constructors_in_immutables
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:card_swiper/card_swiper.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return (Container(
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage(
                //     "assets/png/Frame 6.png",
                //   ),
                //   fit: BoxFit.cover,
                // ),
                color: Colors.white,

                // color: Colors.grey[100],
                // gradient: LinearGradient(
                //   begin: Alignment.centerLeft,
                //   end: Alignment.centerRight,
                //   // ignore: prefer_const_literals_to_create_immutables
                //   colors: [
                //     kPrimaryColor,
                //     kPrimaryColorGradient,
                //   ],
                // ),

                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 9,
                    color: Colors.grey.withAlpha(10),
                  ),
                ],
              ),
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
              child: Image.asset(
                "assets/png/WhatsApp Image 2021-12-11 at 3.44.22 PM.jpeg",
                fit: BoxFit.fill,
              )));
        },
        itemCount: 3,
      ),
    );
  }
}
