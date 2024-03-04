import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'body_calendar.dart';
import 'sample_card.dart';
import 'custom_time_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'February 2024'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int _moneyPointer = 200;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _incrementMoneyPointer() {
    setState(() {
      _moneyPointer += 200; // Increment the money pointer by 200
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200], 
              borderRadius: BorderRadius.circular(30), 
            ), 
            child: TextButton(
              onPressed: () {
                // Handle button tap
              },
              child: Text(
                '+\$$_moneyPointer',
                style: TextStyle(color: const Color(0xff057747)),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BodyCalendar(),
            const SizedBox(height: 14), 
            Container(
              height: 1, 
              color: Colors.grey[300], 
            ),
            const SizedBox(height: 20),
            const CustomTimeRow(
              time: '9:00 AM',
              hour: '1h',
              active: true,
            ),
            const SampleCard(cardName: '9:00 AM - 10:45 AM', blackCard: true),
            const SizedBox(height: 20), 
            const CustomTimeRow(
              time: '11:00 AM',
              hour: '30min',
              active: false,
            ),
            const SampleCard(cardName: '9:00 AM - 10:45 AM', blackCard: false),
            const SizedBox(height: 20),
            const CustomTimeRow(
              time: '12:00 PM',
              hour: '1h',
              active: false,
            ),
            const SampleCard(
              cardName: '12:00 PM - 12:30 PM',
              blackCard: false,
            ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementMoneyPointer, // Call the method to increment money pointer
        backgroundColor: const Color(0xff111827), 
        shape: const CircleBorder(), 
        child: const Icon(
          Icons.add,
          color: Colors.white, 
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
