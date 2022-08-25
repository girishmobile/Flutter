import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[800],
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
            firstDay: DateTime.utc(2020, 12, 31),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              selectedDayPredicate: (day){
                return isSameDay(_selectedDay,day);
              },
              onDaySelected:(selectedDay, focusDay){
                if (!isSameDay(selectedDay, _selectedDay))
                  {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusDay;
                    });
                  }
              },
            ),
          ],
        ),
      ),
    );
  }
}

