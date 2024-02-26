

import 'package:flutter/material.dart';
import 'package:health_app/login.dart';
import 'package:pintextfield/pintextfield.dart';


class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Enter Verification Code',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                width: 32,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),



                  ],
                ),
              ),






              ElevatedButton(onPressed:(){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
                child: Text('Verify'),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Couldn't get code?"),
                    GestureDetector(
                        onTap: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("It takes time to send code,\nPlease wait for some time")));
                        },
                        child: Text("Resend it?",style: TextStyle(color: Colors.blue),)),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Coded By:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/ak47.jpg', scale: 4.5,),
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
