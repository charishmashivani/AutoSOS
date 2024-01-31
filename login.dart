import 'package:autosos_flutter/Login/sign_up.dart';
import 'package:autosos_flutter/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Reuseable Widgets/reuseable_widgets.dart';
// import '../admin_screens/admin_login.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// final _textController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
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
                  Icons.person,
                  color: Colors.black,
                  size: 100.0,
                )),
              ),
              const SizedBox(height: 50.0),
              Container(
                height: 470,
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
                      reuseableTextField("Enter Email ID",Icons.email_outlined,false,_emailTextController),
                      const SizedBox(height: 10.0),
                      reuseableTextField("Enter Password",Icons.lock_outline,false,_passwordTextController),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Text('Don`t have an account? '),
                      //     TextButton(
                      //         onPressed: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                      //         },
                      //         child: const Text(
                      //           'Sign Up!',
                      //           style: TextStyle(
                      //             color: Color(0xff268C92),
                      //           ),
                      //         )),
                      //   ],
                      // ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          signInSignUpButton(context, true, () async{
                            try {
                              final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: _emailTextController.text,
                                  password: _passwordTextController.text
                              );
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));

                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided for that user.');
                              }
                            }


                          })
                            ],
                          ),
                      const SizedBox(height: 10.0),
                      signUpOption(),
                      const SizedBox(height: 40.0),
                      const Text('Or Login with'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height : 70,
                            width : 70,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                            }, icon: Image.asset('images/google.jpeg')),
                          ),
                          SizedBox(
                            height : 65,
                            width : 70,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                            }, icon: Image.asset('images/facebook2.png')),
                          ),
                          SizedBox(
                            height : 65,
                            width : 70,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
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

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don`t have an account?',
          style: TextStyle(color: Colors.black87),
        ),
        const SizedBox(width: 5.0),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
          },
          child: const Text("Sign Up",
          style: TextStyle(color: Color(0xff268C92), fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
}
