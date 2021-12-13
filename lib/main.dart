// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project_name/Carousel.dart';
import 'package:my_project_name/calender.dart';
import 'package:my_project_name/utils/primary_text_form_field.dart';
import 'package:my_project_name/utils/size_config.dart';
import 'package:my_project_name/utils/theme.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // ignore: deprecated_member_use
        accentColor: kSecondaryColor,
        fontFamily: "Poppins",
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text("HOME"),
            Row(
              children: [
                Image.asset(
                  "assets/png/doctor.png",
                  width: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "assets/png/first-aid-kit.png",
                    width: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () => {}),
          ],
        ),
        backwardsCompatibility: false,
        foregroundColor: kTextColor,
        backgroundColor: kTextColorAlternate,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: SafeArea(
          child: Main_Section(),
        ),
      ),
    );
  }
}

class Main_Section extends StatefulWidget {
  const Main_Section({
    Key? key,
  }) : super(key: key);

  @override
  State<Main_Section> createState() => _Main_SectionState();
}

class _Main_SectionState extends State<Main_Section> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          Carousel(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Sectionpart(
                lightc: Color(0xffF5F5FF),
                title: "Doctor \n Consultation",
                image: "assets/png/Screenshot 2021-12-11 at 5.29.51 PM.png",
                color: Color(0xffA7A5CE),
              ),
              Sectionpart(
                lightc: Color(0xfff4feff),
                title: "Diagnostics",
                image: "assets/png/Screenshot 2021-12-11 at 5.29.56 PM.png",
                color: Color(0xff43a393),
              ),
              Sectionpart(
                lightc: Color(0xfffffdf4),
                title: "Sanitize  \n Your Home",
                image: "assets/png/Screenshot 2021-12-11 at 5.29.59 PM.png",
                color: Color(0xffe79e5d),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("FIND DOCTORS",
                    style: h1M24.merge(TextStyle(
                        color: Color(0xff43a393),
                        fontSize: 21,
                        fontWeight: FontWeight.w600))),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HospitalScreen()),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("View All",
                          style: h1M24.merge(TextStyle(
                              color: Color(0xff43a393),
                              fontWeight: FontWeight.bold)))),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingAppointment()),
              );
            },
            child: OptionSlider(
              title: "Demo01",
              value: "2.20",
              info:
                  "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
              fee: "1700",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingAppointment()),
              );
            },
            child: OptionSlider(
              title: "Demo02",
              value: "2.20",
              info:
                  "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
              fee: "1700",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingAppointment()),
              );
            },
            child: OptionSlider(
              title: "Demo03",
              value: "2.20",
              info:
                  "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
              fee: "1700",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingAppointment()),
              );
            },
            child: OptionSlider(
              title: "Demo04",
              value: "2.20",
              info:
                  "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
              fee: "1700",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingAppointment()),
              );
            },
            child: OptionSlider(
              title: "Demo05",
              value: "2.20",
              info:
                  "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
              fee: "1700",
            ),
          ),
        ],
      )),
    );
  }
}

class OptionSlider extends StatelessWidget {
  const OptionSlider({
    Key? key,
    required this.title,
    required this.value,
    required this.fee,
    required this.info,
  }) : super(key: key);
  final String title;
  final String value;
  final String fee;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/png/Screenshot 2021-12-11 at 6.12.37 PM.png",
                width: 80,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      info,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(
                          "Consultation Fee",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          fee,
                          style: h1M24.merge(TextStyle(
                              color: Color(0xff43a393),
                              fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/png/Screenshot 2021-12-11 at 6.20.52 PM.png",
                width: 30,
              ),
              Text(
                value,
                style: TextStyle(
                  color: Color(0xff43a393),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Sectionpart extends StatelessWidget {
  const Sectionpart({
    Key? key,
    required this.title,
    required this.lightc,
    required this.color,
    required this.image,
  }) : super(key: key);
  final String title;
  final Color color;
  final Color lightc;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: lightc,
        border: Border.all(
          width: 4,
          color: color, //                   <--- border width here
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),

      //
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              image,
              width: 60,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: h1M24
                .merge(TextStyle(color: color, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class HospitalScreen extends StatefulWidget {
  HospitalScreen({Key? key}) : super(key: key);

  @override
  _HospitalScreenState createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              "DOCTOR",
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/png/doctor (1).png",
                  width: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "assets/png/first-aid-kit.png",
                    width: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black),
                onPressed: () => {Navigator.pop(context)}),
          ],
        ),
        backwardsCompatibility: false,
        foregroundColor: kTextColor,
        backgroundColor: kTextColorAlternate,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: PrimaryTextFormField(
                        condition: false,
                        onSavedFunction: () => {},
                        validationFunction: () => {},
                        textInputType: TextInputType.name,
                        placeholder: "Search",
                        prefixIcon: Icons.search,
                        formValue: "",
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/png/Screenshot 2021-12-11 at 7.01.04 PM.png",
                        width: 60,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingAppointment()),
                    );
                  },
                  child: OptionSlider(
                    title: "Demo01",
                    value: "2.20",
                    info:
                        "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
                    fee: "1700",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingAppointment()),
                    );
                  },
                  child: OptionSlider(
                    title: "Demo02",
                    value: "2.20",
                    info:
                        "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
                    fee: "1600",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingAppointment()),
                    );
                  },
                  child: OptionSlider(
                    title: "Demo03",
                    value: "19.20",
                    info:
                        "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
                    fee: "7200",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingAppointment()),
                    );
                  },
                  child: OptionSlider(
                    title: "Demo04",
                    value: "79.20",
                    info:
                        "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
                    fee: "4200",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingAppointment()),
                    );
                  },
                  child: OptionSlider(
                    title: "Demo06",
                    value: "39.20",
                    info:
                        "Dental care, Dermatologist, \nDiabetes Management, \nSion|400022",
                    fee: "2200",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BookingAppointment extends StatefulWidget {
  BookingAppointment({Key? key}) : super(key: key);

  @override
  _BookingAppointmentState createState() => _BookingAppointmentState();
}

class _BookingAppointmentState extends State<BookingAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Book-Appointment",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black),
                onPressed: () => {Navigator.pop(context)}),
          ],
        ),
        backwardsCompatibility: false,
        foregroundColor: kTextColor,
        backgroundColor: kTextColorAlternate,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/png/Screenshot 2021-12-11 at 7.28.08 PM.png",
                  width: 350,
                ),
              ),
              Text("Dr. Alpesh Upadhyay",
                  style: h5M122.merge(TextStyle(
                      color: Color(0xff43485b), fontWeight: FontWeight.bold))),
              Text("Skin Care & Hair",
                  style: h5M12.merge(TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500))),
              Container(
                width: 130,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Rating",
                          style: h5M12.merge(TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500))),
                      Row(
                        children: [
                          Image.asset(
                            "assets/png/Screenshot 2021-12-11 at 6.20.52 PM.png",
                            width: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("5.0",
                                style: h5M12.merge(TextStyle(
                                    color: Color(0xff43a393),
                                    fontWeight: FontWeight.bold))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
                child: Text("ABOUT DR. ALPESH UPADYAY",
                    style: h5M122.merge(TextStyle(
                        color: Color(0xff43a393),
                        fontWeight: FontWeight.bold))),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    Text("LOCATION",
                        style: h5M122.merge(TextStyle(
                            color: Color(0xff43a393),
                            fontWeight: FontWeight.bold))),
                    Text(
                        "Gul Mahal building grant road(west) Mumbai\n Maharashtra\n Grant Road| 400077",
                        textAlign: TextAlign.center,
                        style: h5M12.merge(TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500))),
                    Container(
                      child: Image.asset(
                        "assets/png/GoogleMapTA.jpg",
                        width: 200,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalendarScreen()),
                        );
                      },
                      child: Button(
                        title: "Book An Appointment",
                        support: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FinalScreen extends StatefulWidget {
  FinalScreen({Key? key}) : super(key: key);

  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Book-Appointment",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black),
                onPressed: () => {Navigator.pop(context)}),
          ],
        ),
        backwardsCompatibility: false,
        foregroundColor: kTextColor,
        backgroundColor: kTextColorAlternate,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Image.asset(
                  'assets/png/Screenshot 2021-12-11 at 11.47.04 PM.png',
                  width: 600,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Button(title: "DONE")),
            ],
          )),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.title = "",
    this.support = false,
  }) : super(key: key);
  final String title;
  final bool support;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: support == true
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 290,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xffaedfdb),
                borderRadius: BorderRadius.circular(10)),
            child: Text(title,
                style: h5M1220.merge(TextStyle(
                    color: Color(0xff43a393), fontWeight: FontWeight.bold))),
          ),
          // Container(
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          //   child: Image.asset(
          //     "assets/png/Screenshot 2021-12-11 at 7.57.37 PM.png",
          //     width: 50,
          //   ),
          // ),
          support == true
              ? Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    "assets/png/Screenshot 2021-12-11 at 7.57.37 PM.png",
                    width: 50,
                  ),
                )
              : Container(
                  height: 1,
                  width: 0,
                ),
        ],
      ),
    );
  }
}
