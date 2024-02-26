import 'package:flutter/material.dart';
import 'package:health_app/newpage.dart';

class Notice extends StatelessWidget {
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
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    hintText: "Enter Notice here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    )
                ),
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
