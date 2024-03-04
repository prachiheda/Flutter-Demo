import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({super.key, required this.cardName, required this.blackCard});
  final String cardName;
  final bool blackCard;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = blackCard ? const Color(0xff111827) : Colors.white;
    Color textColor = blackCard ? Colors.white : const Color(0xff111827);
    Color borderColor = blackCard ? Colors.transparent : Colors.grey;
    
    
    return SizedBox(
      width: 370,
      height: 140,
      child: Card(
        elevation: 0.0,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Service(s) here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontSize: 16,
                ),
              ),
              const Text(
                'John Doe', 
                style: TextStyle(color: Colors.grey,fontSize: 12),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      cardName,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.grey),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(90, 25)),
                    ),
                    child: const Text(
                      'Add notes',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
