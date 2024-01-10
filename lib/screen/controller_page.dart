import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  bool isSowOn = false;
  bool isSprayOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/up.jpg", width: 50),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // load left.png and right.png as icon from asset

              Image.asset("assets/images/right.jpg", width: 50),
              const SizedBox(
                width: 100,
              ),
              Image.asset("assets/images/left.jpg", width: 50),
            ],
          ),
          const SizedBox(height: 120),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color.fromARGB(255, 54, 56, 55)),
              onPressed: () {},
              child: const Text(
                '          Start          ',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color.fromARGB(255, 54, 56, 55)),
                    onPressed: () {
                      setState(() {
                        isSowOn = !isSowOn;
                      });
                    },
                    child: Text(
                      'Sow ${isSowOn ? "on" : "off"}',
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color.fromARGB(255, 54, 56, 55)),
                    onPressed: () {
                      setState(() {
                        isSprayOn = !isSprayOn;
                      });
                    },
                    child: Text(
                      'Spray ${isSprayOn ? "on" : "off"}',
                      style: TextStyle(color: Colors.white),
                    ))
              ])
        ],
      ),
    );
  }
}
