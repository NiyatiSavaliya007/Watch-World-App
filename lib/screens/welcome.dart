import 'package:flutter/material.dart';
import 'package:watch_world_app/screens/login.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 900,
            child: Image.asset(
              "assets/images/start.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 45, color: Colors.brown.shade200),
                ),
                const SizedBox(
                  height: 300,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 25, color: Colors.brown),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
