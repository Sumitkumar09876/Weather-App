import 'package:flutter/material.dart';
class Hourlyforecastitem extends StatelessWidget {
  const Hourlyforecastitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                '3:00',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Icon(
                Icons.cloud,
                size: 32,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '320.12',
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}