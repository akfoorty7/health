
import 'package:flutter/material.dart';

import 'AuthService.dart';
import 'login.dart';

class Page2 extends StatefulWidget {
  //const Page2({super.key});



  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final _formKey = GlobalKey<FormState>();

  bool a = true;
  var  c = Icons.visibility_off;
  TextEditingController susername = TextEditingController();
  TextEditingController spassword = TextEditingController();
  TextEditingController scpassword = TextEditingController();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign up'),
      // ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 30,
      //       ),
      //       Center(
      //         child: Padding(
      //           padding: const EdgeInsets.all(10),
      //           child: Text('Sign up',style: TextStyle(color: Colors.deepPurple,fontSize: 24),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: TextFormField(
      //           key: _formKey,
      //           controller: susername,
      //           decoration: InputDecoration(
      //               hintText: 'Username',
      //               prefixIcon: Icon(Icons.person),
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(24),
      //               ),
      //
      //           ),
      //
      //           validator: (val){
      //             if(val!.isEmpty){
      //               return "username cannot be empty";
      //
      //             }
      //             else{
      //               return null;
      //             }
      //           },
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             hintText: 'Email',
      //             prefixIcon: Icon(Icons.email),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(24),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: TextField(
      //           keyboardType: TextInputType.number,
      //           decoration: InputDecoration(
      //             prefixIcon: Icon(Icons.phone),
      //             hintText: 'Phone no.',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(24),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: TextFormField(
      //           controller: spassword,
      //           obscureText: a,
      //           decoration: InputDecoration(
      //             prefixIcon: Icon(Icons.lock),
      //             suffix: GestureDetector(
      //                 onTap: (){
      //                   setState(() {
      //                     a = !a;
      //                     c = Icons.visibility;
      //                   });
      //                 },
      //                 onDoubleTap: (){
      //                   setState(() {
      //                     a = !a;
      //                     c = Icons.visibility_off;
      //                   });
      //                 },
      //                 child: Icon(c)),
      //             hintText: 'Password',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(24),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: TextField(
      //           controller: scpassword,
      //           obscureText: a,
      //           decoration: InputDecoration(
      //             prefixIcon: Icon(Icons.lock),
      //             suffix: GestureDetector(
      //                 onTap: (){
      //                   setState(() {
      //                     a = !a;
      //                     c = Icons.visibility;
      //                   });
      //                 },
      //                 onDoubleTap: (){
      //                   setState(() {
      //                     a = !a;
      //                     c = Icons.visibility_off;
      //                   });
      //                 },
      //                 child: Icon(c)),
      //             hintText: 'Confirm Password',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(24),
      //             ),
      //           ),
      //         ),
      //       ),
      //       ElevatedButton(onPressed: () async{
      //         String result = await AuthService().signUp(susername.text, spassword.text);
      //         if (result == "Success"){
      //           print("Log In");
      //
      //         }else{
      //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SignUp Failed")));
      //         }
      //         setState(() {
      //           if(spassword.text != scpassword.text)
      //           {
      //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password didn't match")));
      //           }
      //
      //           else {
      //             Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
      //           }
      //         });
      //       },
      //         child: Text('sign up'),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text('Already have an account? '),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           GestureDetector(
      //               onTap: (){
      //                 setState(() {
      //                   Navigator.pop(context, MaterialPageRoute(builder: (context)=> LoginPage()
      //                   ),
      //                   );
      //                 },
      //                 );
      //               },
      //               child: Text('Log In',style: TextStyle(color: Colors.blue),)),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,

          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              children: [
                Container(
                  child: const Text(
                    "Sign UP",
                    style: TextStyle(
                      color: Color(0xFF3E6652),
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: const Text(
                    "Create your new account",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffc9e3d5),
                    ),
                    child: TextFormField(
                      controller: name,
                      decoration: const InputDecoration(
                        labelText: 'Fullname',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3F6652),
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 28,
                            right: 16), // Adjust content padding as needed
                        prefixIconConstraints: BoxConstraints(
                          minWidth:
                          0, // Set the minimum width to 0 to align with the start of the TextFormField
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              right:
                              10), // Adjust right padding for space between icon and text
                          child: Icon(
                            Icons.account_circle, // Replace with the shield icon you have available
                            color: Color(0xff3F6652),
                          ),
                        ),

                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),

                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffc9e3d5),
                    ),
                    child: TextFormField(
                      controller: susername,
                      decoration:  InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3F6652),
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 28,
                            right: 16), // Adjust content padding as needed
                        prefixIconConstraints: BoxConstraints(
                          minWidth:
                          0, // Set the minimum width to 0 to align with the start of the TextFormField
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              right:
                              10), // Adjust right padding for space between icon and text
                          child: Icon(
                            Icons.email, // Replace with the shield icon you have available
                            color: Color(0xff3F6652),
                          ),
                        ),

                      ),
                    ),
                  ),
                ),



                const SizedBox(height: 30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffc8e3d4),
                    ),
                    child: TextFormField(
                      controller: spassword,
                      obscureText: a, // To hide the password
                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.lock,color: Color(0xff3F6652),),
                        suffix: GestureDetector(
                            onTap: () {
                              setState(() {
                                a = !a;
                                c = a == false ? Icons.visibility : Icons.visibility_off;
                              });
                            },
                            // onDoubleTap: () {
                            //   setState(() {
                            //     a = !a;
                            //     c = Icons.visibility_off;
                            //   });
                            // },
                            child: Icon(c)),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3F6652),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 28,
                              right: 16), // Adjust content padding as needed
                          prefixIconConstraints: BoxConstraints(
                            minWidth:
                            0, // Set the minimum width to 0 to align with the start of the TextFormField
                          ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffc8e3d4),
                    ),
                    child: TextFormField(
                      controller: scpassword,
                      obscureText: a, // To hide the password
                      decoration:  InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Color(0xff3F6652),),
                          suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  a = !a;
                                  c = a == false ? Icons.visibility : Icons.visibility_off;
                                });
                              },
                              // onDoubleTap: () {
                              //   setState(() {
                              //     a = !a;
                              //     c = Icons.visibility_off;
                              //   });
                              // },
                              child: Icon(c)),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3F6652),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 28,
                              right: 16), // Adjust content padding as needed
                          prefixIconConstraints: BoxConstraints(
                            minWidth:
                            0, // Set the minimum width to 0 to align with the start of the TextFormField
                          ),

                      ),
                    ),
                  ),
                ),



                Container(
                  margin:  EdgeInsets.only(top: 50),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:  Size(345, 48),
                        backgroundColor:  Color(0xff3f6652),
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: () async{
                        String result = await AuthService().signUp(susername.text, spassword.text);
                        if (result == "Success"){
                          print("Log In");

                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SignUp Failed")));
                        }
                        setState(() {
                          if(spassword.text != scpassword.text)
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password didn't match")));
                          }

                          else {
                            Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          }
                        });
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),


                ),

                Container(
                  padding: const EdgeInsets.only(top: 6),
                  alignment: const Alignment(0.2, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.check_circle, // Replace with your desired check icon
                        size: 13,
                        color: Color(0xff3f6652),
                      ),
                      SizedBox(width: 6), // Adjust the space between icon and text
                      Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff93A99E),
                        ),
                      ),
                      SizedBox(width:140,),
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3F6652),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 90,
                      height: 2,
                      color: const Color(0xff3f6652),
                    ),
                    const Text(
                        "  or continue with  ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3F6652),
                        )
                    ),
                    Container(
                      width: 90,
                      height: 2,
                      color: const Color(0xff3f6652),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: Image.asset("assets/images/Socialico.png",
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          "Already have an account ?",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          )
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
                        },
                        child: const Text(
                            " Login",
                            style: TextStyle(
                                fontSize: 13.5,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3F6652)
                            )
                        ),
                      ),
                    ],
                  ),
                )






              ],
            ),
          ),
        ),
      ),
    );
  }
}
