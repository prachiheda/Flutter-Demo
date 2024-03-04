import 'package:flutter/material.dart';

class BodyCalendar extends StatefulWidget {
  const BodyCalendar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BodyCalendarState createState() => _BodyCalendarState();
}



class _BodyCalendarState extends State<BodyCalendar> {
  
  late DateTime _selectedDate;
  

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }
  Future<void> _showDatePicker(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Column(
              children: [
                Text('S'),
                SizedBox(height: 8),
                Text('31', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text('M', style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xff111827),
                    child: Text('1',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                Text('T'),
                SizedBox(height: 8),
                Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                Text('W'),
                SizedBox(height: 8),
                Text('3', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                Text('T'),
                SizedBox(height: 8),
                Text('4', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Material(
                shape: const CircleBorder(side: BorderSide(color: Colors.grey)),
                color: Colors.white,
                child: IconButton(
                  onPressed: () {
                  _showDatePicker(context);
                  },
                  icon: const Icon(Icons.calendar_today),
                  color: const Color(0xff111827),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
