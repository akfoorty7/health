import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushNotification extends StatelessWidget {
  const PushNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Notifications'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Example of showing a snackbar using GetX
            Get.snackbar(
              'Notification',
              'You received a new notification!',
              snackPosition: SnackPosition.BOTTOM,
              duration: Duration(seconds: 3),
              animationDuration: Duration(milliseconds: 500),
            );
          },
          child: Text('Show Notification'),
        ),
      ),
    );
  }
}
