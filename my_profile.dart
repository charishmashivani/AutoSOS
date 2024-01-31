import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

final _tController = TextEditingController();

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                      child: const Center(child: Icon(Icons.person,color: Colors.black,size: 100.0,)),
                    ),
                    const SizedBox(height: 80.0),
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80.0),
                          topRight: Radius.circular(80.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:60.0,left: 40.0,right: 40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextField(
                              controller: _tController,
                              decoration: const InputDecoration(
                                hintText: 'Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            TextField(
                              controller: _tController,
                              decoration: const InputDecoration(
                                hintText: 'Email ID',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            TextField(
                              controller: _tController,
                              decoration: const InputDecoration(
                                hintText: 'Age',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            SizedBox(
                                height: 55,
                                width: 125,
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,//change text color of button
                                    backgroundColor: const Color(0xff268C92),//change background color of button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    elevation: 5.0,
                                  ),
                                  onPressed: (){},
                                  label: const Text('Edit',style: TextStyle(fontSize: 15.0),),
                                  icon: const Icon(Icons.edit_sharp,color: Colors.white,),)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
