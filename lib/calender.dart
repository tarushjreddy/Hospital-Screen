// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:my_project_name/main.dart';
import 'package:my_project_name/utils/theme.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<NeatCleanCalendarEvent> _todaysEvents = [
    NeatCleanCalendarEvent('Event A',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 10, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 12, 0),
        description: 'A special event',
        color: Colors.blue[700]),
  ];
  final Map<DateTime, List<NeatCleanCalendarEvent>> _events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      NeatCleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      NeatCleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
        [
      NeatCleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      NeatCleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
      NeatCleanCalendarEvent('Event D',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.amber),
      NeatCleanCalendarEvent('Event E',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.deepOrange),
      NeatCleanCalendarEvent('Event F',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.green),
      NeatCleanCalendarEvent('Event G',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.indigo),
      NeatCleanCalendarEvent('Event H',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.brown),
    ],
  };

  @override
  void initState() {
    super.initState();
    bool state;
    _events.putIfAbsent(
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
        () => _todaysEvents);
    // Force selection of today on first load, so that the list of today's events gets shown.
  }

  @override
  Widget build(BuildContext context) {
    print(_events.length);
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
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 200,
                    child: Calendar(
                      startOnMonday: true,
                      weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
                      events: _events,
                      isExpandable: false,
                      eventDoneColor: Colors.green,
                      selectedColor: Colors.pink,
                      todayColor: Colors.blue,
                      eventColor: Colors.grey,
                      onDateSelected: (value) => {print(value)},
                      locale: 'eng',
                      todayButtonText: 'Book Appointment',
                      isExpanded: false,
                      expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                      dayOfWeekStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 11),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10),
                    child: Text("Book An Appointment",
                        textAlign: TextAlign.left,
                        style: h5M1220.merge(TextStyle(
                            color: Color(0xff43a393),
                            fontWeight: FontWeight.bold))),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: TimeClock()),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FinalScreen()),
                    );
                  },
                  child: Button(
                    title: "Book An Appointment",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeClock extends StatelessWidget {
  const TimeClock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(
              color: Color(
                0xff43a393,
              ),
              width: 3),
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Text(
        "12:00 AM",
        style: TextStyle(
            color: Color(
              0xff43a393,
            ),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
