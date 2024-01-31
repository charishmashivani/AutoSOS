import 'package:autosos_flutter/Login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Reuseable Widgets/reuseable_widgets.dart';
import '../screens/home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final _emailTextController = TextEditingController();
final _passwordTextController = TextEditingController();
final _nameTextController = TextEditingController();

class _SignUpState extends State<SignUp> {
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
                      reuseableTextField(
                          "Enter name", Icons.person_outline, false,
                          _nameTextController),
                      const SizedBox(height: 10.0),
                      reuseableTextField(
                          "Enter Email ID", Icons.mail_outline, false,
                          _emailTextController),
                      const SizedBox(height: 10.0),
                      reuseableTextField(
                          "Create Password", Icons.lock_outline, false,
                          _passwordTextController),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Text('Already have an account? '),
                      //     TextButton(
                      //         onPressed: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                      //         },
                      //         child: const Text(
                      //           'Login!',
                      //           style: TextStyle(
                      //             color: Color(0xff268C92),
                      //           ),
                      //         )),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Container(
                      //         height: 45,
                      //         width: 125,
                      //         margin: const EdgeInsets.only(left: 150.0),
                      //         child: ElevatedButton.icon(
                      //           style: ElevatedButton.styleFrom(
                      //             foregroundColor:
                      //             Colors.white,
                      //             //change text color of button
                      //             backgroundColor: const Color(
                      //                 0xff268C92),
                      //             //change background color of button
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(25),
                      //             ),
                      //             elevation: 5.0,
                      //           ),
                      //           onPressed: () {
                      //             Navigator.push(context, MaterialPageRoute(
                      //                 builder: (
                      //                     context) => const HomeScreen()));
                      //           },
                      //           label: const Text(
                      //             'Sign Up',
                      //             style: TextStyle(fontSize: 15.0),
                      //           ),
                      //           icon: const Icon(
                      //             Icons.login,
                      //             color: Colors.white,
                      //           ),
                      //         )),
                      //   ],
                      // ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          signInSignUpButton(context, false, () async{
                            try {
                              final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: _emailTextController.text,
                                password: _passwordTextController.text,
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                print('The password provided is too weak.');
                              } else if (e.code == 'email-already-in-use') {
                                print('The account already exists for that email.');
                              }
                            } catch (e) {
                              print(e);
                            }
                          })
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      loginOption(),
                      const SizedBox(height: 5.0),
                      const Text('Or Sign Up with'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                            }, icon: Image.asset('images/google.jpeg')),
                          ),
                          SizedBox(
                            height: 65,
                            width: 70,
                            child: IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                            }, icon: Image.asset('images/facebook2.png')),
                          ),
                          SizedBox(
                            height: 65,
                            width: 70,
                            child: IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
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

  Row loginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account?',
          style: TextStyle(color: Colors.black87),
        ),
        const SizedBox(width: 5.0),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
          },
          child: const Text("Login",
            style: TextStyle(
                color: Color(0xff268C92), fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
}
