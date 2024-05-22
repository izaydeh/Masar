import 'package:flutter/material.dart';
import 'package:masar/pages/login_page.dart';
import 'package:masar/my_widgets/my_font.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _dobController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 55, 55),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 200,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: 'Create Account',
                      color: const Color.fromARGB(220, 255, 255, 255),
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyText(
                      text: 'Please Fill Out Your Information Below!',
                      color: Color.fromARGB(158, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 55, 55, 55), width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _mobileController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Mobile Number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Mobile Number (+962)',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _dobController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Date of Birth';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Date of Birth',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                            suffixIcon: Icon(Icons.calendar_today),
                          ),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2101),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                _dobController.text =
                                    "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
                              });
                            }
                          },
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Gender: ',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 55, 55, 55),
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<String>(
                                contentPadding: EdgeInsets.all(0),
                                activeColor:
                                    const Color.fromARGB(255, 55, 55, 55),
                                title: const Text('Male'),
                                value: 'male',
                                groupValue: _gender,
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<String>(
                                contentPadding: EdgeInsets.all(0),
                                activeColor:
                                    const Color.fromARGB(255, 55, 55, 55),
                                title: const Text('Female'),
                                value: 'female',
                                groupValue: _gender,
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: _usernameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Username';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Confirm Your Password';
                            }
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 55, 55, 55)),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );

                      print("User registered: ${userCredential.user}");

                      if (userCredential.user != null) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));

                        FirebaseFirestore.instance
                            .collection("users")
                            .doc(userCredential.user!.uid)
                            .set({
                          "name": _nameController.text,
                          "mobile number": _mobileController.text,
                          "dob": _dobController.text,
                          "username": _usernameController.text,
                          "gender": _gender,
                        });
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      } else {
                        print('Error: $e');
                      }
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white),
                child: Text('Sign-Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
