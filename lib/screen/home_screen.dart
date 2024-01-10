import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

import 'controller_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // final GifController _controller = GifController(vsync: this );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Farming'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Please connect to Bluetooth',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 255,
              height: 255,
              child: Gif(
                image: const AssetImage("assets/images/anim.gif"),
                // controller:
                //     _controller,
                autostart: Autostart.loop,
                placeholder: (context) => const Text('Loading...'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: const Color(0xff20813c)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Controller()));
              },
              child: const Text(
                'Go to Controller Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
