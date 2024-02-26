import 'package:flutter/material.dart';
import 'package:health_app/newpage.dart';

class Eadmit extends StatelessWidget {
  // const Report({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                        hintText: "Enter name of Patient",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                        hintText: "Enter Adress of Patient",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        )
                    ),
                  ),
                ],
              ),

            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context) => NewPage(username.text,password.text)));
            },
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
