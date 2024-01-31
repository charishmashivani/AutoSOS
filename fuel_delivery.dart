import 'package:flutter/material.dart';

class FuelDelivery extends StatefulWidget {
  const FuelDelivery({super.key});

  @override
  State<FuelDelivery> createState() => _FuelDeliveryState();
}

class _FuelDeliveryState extends State<FuelDelivery> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
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
                      child: const Center(child: Icon(Icons.local_gas_station_sharp,color: Colors.black,size: 100.0,)),
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      height: 500,
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
                              controller: _textController,
                              decoration: const InputDecoration(
                                hintText: 'Vehicle Type',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            TextField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                hintText: 'Model Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            TextField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                hintText: 'Location',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            TextField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                hintText: 'Fuel Type',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            TextField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                hintText: 'Quantity',
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
                                  label: const Text('Next',style: TextStyle(fontSize: 15.0),),
                                  icon: const Icon(Icons.navigate_next_sharp,color: Colors.white,),)),
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
