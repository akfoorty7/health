// import 'dart:io';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// import 'App/home/View/newpage.dart';
//
// class Report extends StatelessWidget {
//   // const Report({super.key});
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: username,
//                 decoration: InputDecoration(
//                   hintText: "Enter your report",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(24),
//                   )
//                 ),
//               ),
//             ),
//             if (_selectedImage != null)
//               Image.file(
//                 _selectedImage!,
//                 height: 200.0,
//                 width: 200.0,
//               ),
//             ElevatedButton(
//               onPressed: _pickImage,
//               child: Text('Pick Image'),
//             ),
//             ElevatedButton(onPressed: (){
//               Navigator.pop(context, MaterialPageRoute(builder: (context) => NewPage(username.text,password.text)));
//             },
//                 child: Text("Submit")),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MyImagePickerScreen extends StatefulWidget {
//   @override
//   _MyImagePickerScreenState createState() => _MyImagePickerScreenState();
// }
//
// class _MyImagePickerScreenState extends State<MyImagePickerScreen> {
//   final ImagePicker _imagePicker = ImagePicker();
//   File? _selectedImage;
//
//   Reference storageReference = FirebaseStorage.instance
//       .ref()
//       .child('images');
//
//
//   // Form fields
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//   Future<void> _pickImage() async {
//     final pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 65);
//     if (pickedFile != null) {
//       setState(() {
//         _selectedImage = File(pickedFile.path);
//       });
//     }
//   }
//
//   Future<void> uploadImageToFirebaseStorage(
//       File imagePath) async {
//     try {
//
//       var uploadTask = storageReference.child('${DateTime.now()}.jpg').putFile(imagePath);
//
//       String downloadURL =
//       await (await uploadTask).ref.getDownloadURL();
//
//       await firestore.collection('User').add({
//         'imageURL': downloadURL,
//         'name': _nameController.text.trim(),
//         'email': _emailController.text.trim(),
//         'phone' : _phoneController.text.trim()
//       });
//
//       print('Image uploaded and URL saved to Fire store successfully.');
//     } catch (error) {
//       print('Error uploading image or saving URL to Fire store: $error');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
