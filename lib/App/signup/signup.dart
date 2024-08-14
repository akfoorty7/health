import 'package:flutter/material.dart';
import '../../API/AuthService.dart';
import '../login/login.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;
  IconData _passwordIcon = Icons.visibility_off;

  TextEditingController susername = TextEditingController();
  TextEditingController spassword = TextEditingController();
  TextEditingController scpassword = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      "Sign Up",
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
                        color: Colors.amber,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildTextField(
                    controller: name,
                    label: 'Fullname',
                    icon: Icons.account_circle,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                    controller: susername,
                    label: 'Email',
                    icon: Icons.email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                    controller: mobilenumber,
                    label: 'Mobile Number',
                    icon: Icons.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      if (value.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Please enter a valid 10-digit mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                    controller: spassword,
                    label: 'Password',
                    icon: Icons.lock,
                    obscureText: _obscurePassword,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                          _passwordIcon = _obscurePassword ? Icons.visibility_off : Icons.visibility;
                        });
                      },
                      child: Icon(_passwordIcon),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                    controller: scpassword,
                    label: 'Confirm Password',
                    icon: Icons.lock,
                    obscureText: _obscurePassword,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                          _passwordIcon = _obscurePassword ? Icons.visibility_off : Icons.visibility;
                        });
                      },
                      child: Icon(_passwordIcon),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != spassword.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(345, 48),
                          backgroundColor: Color(0xff3f6652),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            String result = await AuthService().signUp(
                              susername.text,
                              spassword.text,
                              name.text,
                              mobilenumber.text,
                            );
                            if (result == "Success") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("SignUp Failed: $result")),
                              );
                            }
                          }
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              color: Color(0xff898989),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: ' Log In',
                                style: TextStyle(
                                  color: Color(0xff3F6652),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    Widget? suffixIcon,
    required String? Function(String?) validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: 343,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color(0xffc9e3d5),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff3F6652),
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 28, right: 16),
              prefixIconConstraints: BoxConstraints(minWidth: 0),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(icon, color: Color(0xff3F6652)),
              ),
              suffixIcon: suffixIcon,
              errorStyle: TextStyle(
                height: 0,
                color: Colors.transparent,
              ),
            ),
            validator: validator,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 4),
          child: Builder(
            builder: (BuildContext context) {
              return Text(
                (validator(controller.text) ?? ''),
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 12,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  // Widget _buildTextField({
  //   required TextEditingController controller,
  //   required String label,
  //   required IconData icon,
  //   bool obscureText = false,
  //   Widget? suffixIcon,
  //   required String? Function(String?) validator,
  // }) {
  //   return Center(
  //     child: Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 16),
  //       width: 343,
  //       height: 50,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(14),
  //         color: const Color(0xffc9e3d5),
  //       ),
  //       child: TextFormField(
  //         style: TextStyle(color: Colors.black),
  //         controller: controller,
  //         obscureText: obscureText,
  //         decoration: InputDecoration(
  //           labelText: label,
  //           labelStyle: TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.w500,
  //             color: Color(0xff3F6652),
  //           ),
  //           border: InputBorder.none,
  //           enabledBorder: InputBorder.none,
  //           focusedBorder: InputBorder.none,
  //           contentPadding: EdgeInsets.only(left: 28, right: 16),
  //           prefixIconConstraints: BoxConstraints(minWidth: 0),
  //           prefixIcon: Padding(
  //             padding: EdgeInsets.only(right: 10),
  //             child: Icon(icon, color: Color(0xff3F6652)),
  //           ),
  //           suffixIcon: suffixIcon,
  //           errorStyle: TextStyle(color: Colors.red),
  //         ),
  //         validator: validator,
  //       ),
  //     ),
  //   );
  // }
}