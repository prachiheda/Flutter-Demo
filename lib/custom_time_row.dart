import 'package:flutter/material.dart';

class CustomTimeRow extends StatelessWidget {
  final String time;
  final String hour;
  final bool active;

  const CustomTimeRow({super.key, 
    required this.time,
    required this.hour,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        18,
        0,
        30,
        10,
      ),
      child: Row(
        children: [
          Container(
            width: 6, 
            height: 6, 
            decoration: BoxDecoration(
              color: active ? const Color(0xff057747) : Colors.transparent, 
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8), 
          Text(
            time,
            style: TextStyle(
              color: active ? const Color(0xff057747) : const Color(0xff111827), 
              fontSize: 16,
            ),
          ),
          const Spacer(), 
          Text(
            hour,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
