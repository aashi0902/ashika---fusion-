//SIGN UP PAGE

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'FirebaseExceptions/exceptions.dart';
import 'LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://images.freecreatives.com/wp-content/uploads/2016/04/Awesome-Pink-Gradient-Wallpaper.jpg'),
                //image: AssetImage("pink.webp"), // replace with your asset path
                fit: BoxFit.cover,
              ),
            ),

            child: Form(
              key: _formKey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Image.asset('logo.png', height: 150),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'WELCOME TO FUSION FANTASIA',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 239, 19),
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      )),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Create your Account',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.cyanAccent,
                            fontSize: 20),
                      )),

                  SizedBox(
                    height: 10.0,
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
                    height: 10.0,
                  ),

                  Container(
                      child: SizedBox(
                        width: 400.0,
                        child: TextFormField(
                          controller: fnameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
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
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      )
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Container(
                      child: SizedBox(
                        width: 400.0,
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email ID',
                            icon: Icon(Icons.email),
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
                              return 'Please enter your email';
                            }
                            // You can add more complex email validation here if needed
                            return null;
                          },
                        ),
                      )
                  ),

                  SizedBox(
                    height: 10.0,
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
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },
                        ),
                      )
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Container(
                      child: SizedBox(
                        width: 400.0,
                        child: TextFormField(
                          controller: confirmpasswordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
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
                              return 'Please confirm your password';
                            } else if (value != passwordController.text) {
                              return 'Passwords do not match';
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
                    child: const Text('Forgot Password', style: TextStyle(color: Color.fromARGB(255, 54, 216, 244))),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: ElevatedButton(
                        child: const Text('SIGN UP'),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: confirmpasswordController.text,
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                throw WeakPasswordAuthException();
                              } else if (e.code == 'email-already-in-use') {
                                throw EmailAlreadyInUseAuthException();
                              } else if (e.code == 'invalid-email') {
                                throw InvalidEmailAuthException();
                              } else {
                                print(e);
                                throw GenericAuthException();
                              }
                            } catch (e) {
                              print(e);
                              throw GenericAuthException();
                            }
                            print(nameController.text);
                            print(passwordController.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                          }
                        },
                      )
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Row(
                    children: <Widget>[
                      const Text('Already have an Account?'),
                      TextButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color:Colors.greenAccent),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
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
