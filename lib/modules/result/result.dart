import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;
  const ResultScreen(
      {Key? key, required this.isMale, required this.age, required this.result})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("BMI Calculator"),
              Icon(Icons.accessibility_new)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              ListTile(
                title: const Text(
                  "Gender",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                subtitle: Text(
                  isMale ? "Male" : "Female",
                  style: const TextStyle(color: Colors.white60, fontSize: 20),
                ),
                leading: const Icon(
                  Icons.accessibility_new,
                  color: Colors.blue,
                ),
                trailing: Icon(
                  isMale ? Icons.male : Icons.female,
                  color: Colors.blue,
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[900],
              ),
              ListTile(
                title: const Text(
                  "Age",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                subtitle: Text(
                  "$age",
                  style: const TextStyle(color: Colors.white60, fontSize: 20),
                ),
                leading: const Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[900],
              ),
              ListTile(
                title: const Text(
                  "BMI",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      result.toStringAsFixed(2),
                      style:
                          const TextStyle(color: Colors.white60, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "kg/m\u00B2",
                      style: TextStyle(color: Colors.white60, fontSize: 20),
                    ),
                  ],
                ),
                leading: const Icon(
                  Icons.calculate_sharp,
                  color: Colors.blue,
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[900],
              ),
              ListTile(
                title: const Text(
                  "BMI Categories ",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Underweight = <18.5",
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                      Text(
                        "Normal weight = 18.5–24.9 ",
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                      Text(
                        "Overweight = 25–29.9",
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                      Text(
                        "Obesity = BMI of 30 or greater",
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                leading: const Icon(
                  Icons.category,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ));
  }
}
