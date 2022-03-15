import 'package:flutter/material.dart';
import 'package:flutter_animation_app/screens/home_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.5, -0.8),
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 35.0
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.4, -0.68),
              child: Text(
                "Flutter Animation App Demo",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0,
                    color: Colors.grey
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Image.asset("assets/images/62035-walk-cycle-animation.gif"),
            ),
            Align(
              alignment: Alignment(0, 0.8),
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
