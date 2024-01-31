import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final _textController = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff268C92),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xffFFEE57),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: const Center(
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                    size: 100.0,
                  )),
            ),
            const SizedBox(height: 150.0),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:60.0,left: 40.0,right: 40.0),
                    child: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email ID',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Row(
                    children: [
                      Container(
                          height: 45,
                          width: 125,
                          margin: const EdgeInsets.only(left: 150.0),
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
                            onPressed: (){},
                            label: const Text(
                              'Verify',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            icon: const Icon(
                              Icons.navigate_next_sharp
                              ,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
