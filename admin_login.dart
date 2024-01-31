import 'package:autosos_flutter/admin_screens/admin_dashboard.dart';
import 'package:flutter/material.dart';

import '../Login/forgot_password.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

final _textController = TextEditingController();

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: 500,
          color: const Color(0xff268C92),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xffFFEE57),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: const Center(
                    child: Icon(
                      Icons.admin_panel_settings_sharp,
                      color: Colors.black,
                      size: 100.0,
                    )),
              ),
              const SizedBox(height: 80.0),
              Container(
                height: 440,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80.0),
                    topRight: Radius.circular(80.0),
                  ),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Email ID',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassword()));
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xff268C92),
                                ),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 45,
                              width: 125,
                              margin: const EdgeInsets.only(left: 155),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                  Colors.white, //change text color of button
                                  backgroundColor: const Color(
                                      0xff268C92), //change background color of button
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  elevation: 5.0,
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminDashboard()));
                                },
                                label: const Text(
                                  'Login',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                                icon: const Icon(
                                  Icons.login,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 40.0),
                      const Text('Or Login with'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height : 70,
                            width : 70,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminDashboard()));
                            }, icon: Image.asset('images/google.jpeg')),
                          ),
                          SizedBox(
                            height : 65,
                            width : 70,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminDashboard()));
                            }, icon: Image.asset('images/facebook2.png')),
                          ),
                          SizedBox(
                            height : 65,
                            width : 70,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminDashboard()));
                            }, icon: Image.asset('images/twitter.png')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
