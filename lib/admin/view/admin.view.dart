import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin View'),
      ),
      body: Column(
        children: [
          _buildCard('User Data', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserListView()),
            );
          }),
          _buildCard('COVID Report', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CovidReportView()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildCard(String title, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.all(16),
      child: ListTile(
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Data')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var user = snapshot.data!.docs[index];
              return Center(
                child: ListTile(
                  title: Text(user['email']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('FullName: ${user['fullname']}'),
                      Text('MobileNumber: ${user['mobilenumber']}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CovidReportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COVID Report')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('reports').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var report = snapshot.data!.docs[index];
              return ListTile(
                title: Text(report['name']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone: ${report['phone']}'),
                    Text('Report: ${report['report']}'),
                    Text('Name: ${report['name']}'),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}