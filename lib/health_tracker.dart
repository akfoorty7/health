import 'package:flutter/material.dart';

class HealthTracker extends StatefulWidget {
  const HealthTracker({super.key});

  @override
  State<HealthTracker> createState() => _HealthTrackerState();
}

class _HealthTrackerState extends State<HealthTracker> {
  TextEditingController bpController = TextEditingController();
  TextEditingController sugarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Health Tracker'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('BP:'),
          TextField(
            controller: bpController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),

          ),
          Text('Sugar:'),
          TextField(
            controller: sugarController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                )
            ),

          ),
        ],
      ),
    );
  }
}
