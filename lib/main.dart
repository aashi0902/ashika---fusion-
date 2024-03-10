import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'SignupPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'FUSION FANTASIA';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MainPage(),
      ),
    );
  }
}



//MAIN PAGE

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              //image: NetworkImage('https://framerusercontent.com/images/9e2GO1pnc4sjf1QDOvXEIQx1Zk.webp'),
              image: NetworkImage('https://framerusercontent.com/images/9e2GO1pnc4sjf1QDOvXEIQx1Zk.webp'),
              //image: AssetImage("main.jpg"), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              SizedBox(
                height: 100,
                width: 100,
                child: Image.network('file:///F:/MITHIBAI/SEM%20IV/Android/logo.png'),
              ),
              //Image.asset('logo.png'),
              //Image.network('https://www.pikpng.com/pngl/m/82-821269_social-creative-design-art-logo-clipart.png', height:100, width:100),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'FUSION FANTASIA',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w900,
                        fontSize: 50),
                  )),

              SizedBox(
                height: 20.0,
              ),

              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:
                SizedBox(
                  height: 30,
                  width: 150,
                  child: ElevatedButton(
                    child: const Text('LOGIN'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                  ),
                ),
              ),

              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:
                SizedBox(
                  height: 30,
                  width: 150,
                  child: ElevatedButton(
                    child: const Text('SIGN UP'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 40.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        )
    );
  }
}
