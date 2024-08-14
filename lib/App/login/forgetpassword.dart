//
//
// import 'package:flutter/material.dart';
// import 'package:health_app/emailverify.dart';
// import 'package:health_app/login.dart';
//
// class ForgotPassword extends StatefulWidget {
//  // const ForgotPassword({super.key});
//
//   @override
//   State<ForgotPassword> createState() => _ForgotPasswordState();
// }
//
// class _ForgotPasswordState extends State<ForgotPassword> {
//   bool a = true;
//   var b = Colors.black;
//   var c = Icons.visibility_off;
//
//   TextEditingController password = TextEditingController();
//   TextEditingController confirmpassword = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Forgot Password'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 decoration: InputDecoration(
//                   suffix: GestureDetector(
//                     onTap: (){
//                       setState(() {
//                         b = Colors.green;
//                       });
//                     },
//                       onDoubleTap: (){
//                       setState(() {
//                         b = Colors.black;
//                       });
//                       },
//                       child: Icon(Icons.check_circle,color: b,)),
//                   prefixIcon: Icon(Icons.email),
//                   hintText: 'Enter your registered Email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                 ),
//               ),
//             ),
//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Verify()));
//             }, child: Text('Verify')),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextFormField(
//                 controller: password,
//                 obscureText: a,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.lock),
//                   suffix: GestureDetector(
//                     onTap: (){
//                       setState(() {
//                         a = !a;
//                         c = Icons.visibility;
//                       });
//                     },
//                       onDoubleTap: (){
//                       setState(() {
//                         a = !a;
//                         c = Icons.visibility_off;
//                       });
//                       },
//                       child: Icon(c)),
//                   hintText: 'Enter New Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: confirmpassword,
//                 obscureText: a,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.lock),
//                   suffix: GestureDetector(
//                     onTap: (){
//                       setState(() {
//                         a = !a;
//                         c = Icons.visibility;
//                       });
//                     },
//                       onDoubleTap: (){
//                       setState(() {
//                         a  = !a;
//                         c = Icons.visibility_off;
//                       });
//                       },
//                       child: Icon(c)),
//                   hintText: 'Confirm New Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                 ),
//               ),
//             ),
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 if(password.text != confirmpassword.text){
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password didn't match")));
//                 }
//                 else{
//                   Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()),);
//                 }
//               });
//
//             }, child: Text('Submit'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text("Sponsored By:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
//             ),
//             Image.asset('assets/ak47.jpg',scale: 4.5,),
//           ],
//         ),
//       ),
//     );
//   }
// }
