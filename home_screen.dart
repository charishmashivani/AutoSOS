import 'package:autosos_flutter/screens/fuel_delivery.dart';
import 'package:autosos_flutter/screens/vehicle_services.dart';
import 'package:autosos_flutter/navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xff268C92),
        foregroundColor: const Color(0xffFFFFFF),
        elevation: 0.0,
      ),
      drawer: const NavBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 850,
                width: 500,
                color: const Color(0xffFFFDEE),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 50.0,top: 70.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff268C92),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(250.0),
                          bottomRight: Radius.circular(250.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 50.0,left: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello Aubrey!!!',
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PoppinsB',
                              ),
                            ),
                            Text(
                              'Welcome to AutoSOS',
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'GBP',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        width: 250,
                        height: 250,
                        margin: const EdgeInsets.all(20.0),
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,//change text color of button
                              backgroundColor: const Color(0xffFFF179),//change background color of button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              elevation: 15.0,
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const VehicleServices()));
                            }, icon: const Icon(Icons.car_repair_rounded,color: Colors.black,size: 100.0,),
                            label: const Text('Vehicle Service',style: TextStyle(fontSize: 30.0),))),
                    Container(
                        width: 250,
                        height: 250,
                        margin: const EdgeInsets.all(20.0),
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,//change text color of button
                              backgroundColor: const Color(0xffFFF179),//change background color of button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              elevation: 15.0,
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FuelDelivery()));
                            }, icon: const Icon(Icons.local_gas_station_sharp,color: Colors.black,size: 100.0,),
                            label: const Text('Fuel Delivery',style: TextStyle(fontSize: 30.0),))),
                    // ElevatedButton(onPressed: () {
                    //   print('Clicked');
                    // }, child: const Text('Click Me'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: NavigationBar(
      //   destinations: const [
      //     NavigationDestination(icon: Icon(Icons.facebook), label: 'Facebook'),
      //     NavigationDestination(icon: Icon(Icons.messenger), label: 'messenger'),
      //     NavigationDestination(icon: Icon(Icons.whatshot), label: 'whatshot'),
      //   ],
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   color: const Color(0xff268C92),
      //   child: Row(
      //     children: [
      //       IconButton(onPressed: () {}, icon: Icon(Icons.facebook),),
      //       IconButton(onPressed: () {}, icon: Icon(Icons.facebook),),
      //       IconButton(onPressed: () {}, icon: Icon(Icons.facebook),),
      //     ],
      //   ),
      // ),
    );
  }
}
