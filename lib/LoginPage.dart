//LOGIN PAGE

import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'FirebaseExceptions/exceptions.dart';

import 'AppHomePage.dart';
import 'SignupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://t4.ftcdn.net/jpg/03/43/67/61/360_F_343676173_v4Ss61cNnbWeJZimJK3Hbf3TBBqRmU8X.jpg'),
                //image: AssetImage("blue.jpg"), // replace with your asset path
                fit: BoxFit.cover,
              ),
            ),

            child: Form(
              key: _formKey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Image.asset('logo.png', height:250),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'WELCOME BACK :)',
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      )),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Enter your credentials to Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.amber,
                            fontSize: 20),
                      )),

                  SizedBox(
                    height: 20.0,
                  ),

                  Container(
                      child: SizedBox(
                        width: 400.0,
                        child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                            icon: Icon(Icons.person),
                            iconColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                      )
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Container(
                      child: SizedBox(
                        width: 400.0,
                        child: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            icon: Icon(Icons.password),
                            iconColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 4) {
                              return 'Password must be at least 4 characters long';
                            }
                            return null;
                          },
                        ),
                      )
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text('Forgot Password', style: TextStyle(color: Colors.red)),

                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ElevatedButton(
                        child: const Text('LOGIN'),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              await Firebase.initializeApp(
                                options: DefaultFirebaseOptions.currentPlatform,
                              );
                              await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: nameController.text,
                                password: passwordController.text,
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                throw UserNotFoundAuthException();
                              } else if (e.code == 'wrong-password') {
                                throw WrongPasswordAuthException();
                              } else {
                                throw GenericAuthException();
                              }
                            } catch (_) {
                                throw GenericAuthException();
                            }
                            print(nameController.text);
                            print(passwordController.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(name: nameController.text)));
                          }
                        },
                      )
                  ),

                  SizedBox(
                    height: 40.0,
                  ),

                  Row(
                    children: <Widget>[
                      const Text('Does not have account?', style: TextStyle(color: Colors.grey)),
                      TextButton(
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.greenAccent,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            )
        ));
  }
}
