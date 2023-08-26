import 'package:flutter/material.dart';

import 'flutter_kahveci_app.dart';

void main() {
  runApp(const FlutterKahvecisi());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.white,
                    width: 200,
                    height: 120,
                    // Eğer text olursa boyutunu ona göre ayarlıyor.
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 100, height: 100, color: Colors.red),
                  Container(width: 100, height: 100, color: Colors.yellow)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 120,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
