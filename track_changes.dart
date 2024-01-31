import 'package:flutter/material.dart';

class TrackChanges extends StatelessWidget {
  const TrackChanges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
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
                height: 1250,
                width: 500,
                color: const Color(0xffFFF179),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff268C92),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.track_changes,
                        color: Colors.black,
                        size: 100.0,
                      )),
                    ),
                    const SizedBox(height: 80.0),
                    Container(
                      height: 950,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFDEE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80.0),
                          topRight: Radius.circular(80.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 60.0),
                          Container(
                            height: 400,
                            width: 300,
                            decoration: const BoxDecoration(
                              color: Color(0xff268C92),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200.0),
                                topRight: Radius.circular(200.0),
                              ),
                            ),
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
                                    Icons.local_gas_station_sharp,
                                    color: Colors.black,
                                    size: 100.0,
                                  )),
                                ),
                                const SizedBox(height: 10.0),
                                Container(
                                  height: 200,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFDEE),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          Container(
                            height: 400,
                            width: 300,
                            decoration: const BoxDecoration(
                              color: Color(0xff268C92),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200.0),
                                topRight: Radius.circular(200.0),
                              ),
                            ),
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
                                        Icons.car_repair_rounded,
                                        color: Colors.black,
                                        size: 100.0,
                                      )),
                                ),
                                const SizedBox(height: 10.0),
                                Container(
                                  height: 200,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFDEE),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
    );
  }
}
