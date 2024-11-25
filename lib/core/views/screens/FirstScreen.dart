import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  int x = 8;

  String name = "salem";

  double y = 7.5;

  bool isAdmin = true;

  dynamic dy = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 500,
                width: 420,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 235, 0, 0),
                  ],
                )),
                height: 500,
                width: 420,
              ),
            ),
            Positioned(
                top: 250,
                right: 42,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ' اختر مسارك',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, "/actlog");
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 186, 0, 0),
                                  ),
                                  height: 200,
                                  width: 145,
                                  child: Center(
                                      child: Text(
                                    "منتج",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 253, 253, 253),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  )))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, "/actlog");
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 115, 178, 255)),
                                height: 200,
                                width: 145,
                                child: Center(
                                    child: Text(
                                  "ممثل",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Positioned(
              top: 120,
              left: 155,
              child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/lo.png", fit: BoxFit.fill)),
            ),
          ]),
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String label;

  OptionCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add navigation or function when the card is tapped.
      },
      child: Container(
        width: 140,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: Colors.blue[700],
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
