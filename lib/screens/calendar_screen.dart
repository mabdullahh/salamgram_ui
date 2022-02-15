import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/data/data.dart';
import 'package:salamgram/widgets/all_ramadan_schedule_widget.dart';
import 'package:salamgram/widgets/calendar_event_widget.dart';
import 'package:salamgram/widgets/ramadan_counter_widget.dart';
import 'package:salamgram/widgets/ramadhan_schedule_widget.dart';
import 'package:salamgram/widgets/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();

}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDay = DateTime(2028, 03, 11);
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              TableCalendar(
                focusedDay: focusedDay,
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  weekendStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: darkPrimary,
                  ),
                  selectedTextStyle: const TextStyle(color: Colors.black),
                  selectedDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: primaryColor)),
                ),
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(selectedDay, date);
                },
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                ),
                calendarBuilders: CalendarBuilders(
                  headerTitleBuilder: (context, day) {
                    initializeDateFormatting('en_US', null);
                    final df = DateFormat("dd MMMM, yyyy", 'en_US')
                        .format(day.toUtc());

                    return Center(
                      child: Column(
                        children: [
                          Text(
                            df.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              HijriCalendar.fromDate(day)
                                  .toFormat("dd MMMM, yyyy H")
                                  .toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              LimitedBox(
                  maxHeight: 600, child: CalendarEventWidget(events: events)),
               const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RamadanCounter(),
              ),
              const RamadanScheduleWidget(),
              AllRamadanScheduleWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
