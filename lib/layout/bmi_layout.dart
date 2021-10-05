import 'dart:math';
import 'package:bmi_calculator/modules/result/result.dart';
import 'package:bmi_calculator/shared/components/constants.dart';
import 'package:flutter/material.dart';

class BmiLayout extends StatefulWidget {
  const BmiLayout({Key? key}) : super(key: key);

  @override
  _BmiLayoutState createState() => _BmiLayoutState();
}

class _BmiLayoutState extends State<BmiLayout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("BMI Calculator"), Icon(Icons.accessibility_new)],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isMale ? Colors.blue : Colors.grey[900]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: isMale ? Colors.black : Colors.white,
                                size: 100,
                              ),
                              Text("Male",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                      isMale ? Colors.black : Colors.white60)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: !isMale ? Colors.blue : Colors.grey[900]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: !isMale ? Colors.black : Colors.white,
                                size: 100,
                              ),
                              Text("Female",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                      !isMale ? Colors.black : Colors.white60)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[900]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Height",
                            style: TextStyle(color: Colors.white60, fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "${height.round()}",
                                style: const TextStyle(color: Colors.white, fontSize: 50),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "cm",
                                style:
                                TextStyle(color: Colors.white60, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                      Slider(
                        value: height,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        min: 80,
                        max: 220,
                        //activeColor: Colors.red,
                        //inactiveColor: Colors.red,
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Weight",
                                style:
                                TextStyle(fontSize: 20, color: Colors.white60)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  "${weight.round()}",
                                  style:
                                  const TextStyle(color: Colors.white, fontSize: 50),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "kg",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 1,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                    heroTag: 2,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: const Icon(Icons.add),
                                    mini: true),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Age",
                                style:
                                TextStyle(fontSize: 20, color: Colors.white60)),
                            Text(
                              "$age",
                              style: const TextStyle(color: Colors.white, fontSize: 50),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 3,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                    heroTag: 4,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(Icons.add),
                                    mini: true),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            age: age,
                            isMale: isMale,
                            result: result,
                          )));
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
