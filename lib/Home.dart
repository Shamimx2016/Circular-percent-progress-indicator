import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final percent = 0.8;
  var duration = 2000;
  String text = "80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new CircularPercentIndicator(
                radius: 100,
                lineWidth: 25,
                backgroundColor: Colors.grey.shade300,
                progressColor: Colors.teal,
                animation: true,
                animationDuration: duration,
                percent: percent,
                center: Text(
                  text,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal,
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
              ),
              LinearPercentIndicator(
                backgroundColor: Colors.grey.shade300,
                progressColor: Colors.teal,
                animation: true,
                animationDuration: duration,
                percent: percent,
                lineHeight: 25,
                barRadius: Radius.circular(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
