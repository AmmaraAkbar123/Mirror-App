import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarBox extends StatelessWidget {
  const CalendarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.white),
        color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          // Calendar Header
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'July 2024',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Calendar Body
          TableCalendar(
            calendarStyle: CalendarStyle(
              cellMargin: EdgeInsets.all(1),
              defaultTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              todayTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              todayDecoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              outsideTextStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            rowHeight: 30,
            headerVisible: false,
            daysOfWeekHeight: 20, 
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
