import 'package:autosos_flutter/admin_screens/admin_navbar.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: const AdminNavbar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xffFFEE57),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 114,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xff268C92),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 40.0),
                      child: Text(
                        'Admin DashBoard',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.55,
                            color: Colors.white),
                      )),
                ),
                Container(
                  height: 430,
                  width: 500,
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: 400,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0)),
                          color: Color(0xffD9D9D9),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sl No.'),
                              SizedBox(width: 15.0),
                              Text('Order ID'),
                              SizedBox(width: 15.0),
                              Text('User'),
                              SizedBox(width: 15.0),
                              Text('Amount'),
                              SizedBox(width: 15.0),
                              Text('Status'),
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
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.all_inbox_sharp), label: 'All Orders'),
          NavigationDestination(
              icon: Icon(Icons.downloading_sharp), label: 'In Process'),
          NavigationDestination(
              icon: Icon(Icons.check_circle_outline_sharp), label: 'Completed'),
          NavigationDestination(
              icon: Icon(Icons.cancel_outlined), label: 'Cancelled'),
        ],
      ),
    );
  }
}
