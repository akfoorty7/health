import 'package:flutter/material.dart';
import 'package:health_app/health_tracker.dart';
import 'package:provider/provider.dart';
import 'AuthService.dart';
import 'FormPage.dart';

import 'emergency.dart';
import 'incident.dart';
import 'login.dart';
import 'news.dart';
import 'notice.dart';
import 'report.dart';
import 'covid.dart';

class NewPage extends StatelessWidget {
  final String username;
  final String password;

  NewPage(this.username, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("No New Notifications!")),
                        );
                      },
                      child: Image.asset('assets/notification-fill.png', scale: 2.5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Namaste,  ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    ),
                    Text(username, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome to Hamro Swaystha Hamro Hathmai"),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ak47(),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                            },
                            child: Image.asset("assets/Frame 57.png", scale: 2.5),
                          ),
                          Text("News"),
                        ],
                      ),
                      SizedBox(width: 70),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));
                            },
                            child: Image.asset("assets/Frame 58.png", scale: 2.5),
                          ),
                          Text("Notice"),
                        ],
                      ),
                      SizedBox(width: 70),
                      Column(
                        children: [
                          Image.asset("assets/Frame 59.png", scale: 2.5),
                          Text("Fm"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));
                            },
                            child: Image.asset("assets/Frame 60.png", scale: 2.5),
                          ),
                          Text("Hospital Nearby"),
                        ],
                      ),
                      SizedBox(width: 35),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HealthTracker()));
                            },
                            child: Image.asset("assets/Frame 61.png", scale: 2.5),
                          ),
                          Text("e-admit form"),
                        ],
                      ),
                      SizedBox(width: 55),
                      Column(
                        children: [
                          Image.asset("assets/Frame 62.png", scale: 2.5),
                          Text("Clearance Bill"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Provider.of<AuthService>(context, listen: false).signOut();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                        (route) => false,
                  );
                },
                child: Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ak47 extends StatelessWidget {
  const ak47({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage()));
                },
                child: Image.asset("assets/Frame 63.png", scale: 2.5),
              ),
              Text("Report Covid-19"),
            ],
          ),
          SizedBox(width: 25),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Incident()));
                },
                child: Image.asset("assets/ReportIncident.png", scale: 2.5),
              ),
              Text("Report Incident"),
            ],
          ),
          SizedBox(width: 25),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Emergency()));
                },
                child: Image.asset("assets/Frame 56.png", scale: 2.5),
              ),
              Text("Emergency Number"),
            ],
          ),
        ],
      ),
    );
  }
}
