import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

final _textEditController = TextEditingController();

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          width: 500,
          color: const Color(0xffEBF9FA),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: 500,
                decoration: const BoxDecoration(
                    color: Color(0xffFFF48E),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(500.0),
                      bottomLeft: Radius.circular(500.0),
                    )),
                child: Column(
                  children: [
                    Container(
                      height: 85,
                      width: 400,
                      margin: const EdgeInsets.only(top: 100.0, left: 8.0),
                      child: const Text(
                        'Get 24/7 Vehicle Assisstance',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      'Anytime Anywhere',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Call : +91 8618329647',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              const Text('You’re reaching out to our SUPPORT team',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color(0xff1D6C71),
              ),),
              Container(
                height: 260,
                width: 300,
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _textEditController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        controller: _textEditController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Email ID',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        controller: _textEditController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Message',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 45.0,
                width: 45.0,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffFFEE57),
                ),child: const Icon(Icons.send,color: Colors.black,size: 25.0,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
