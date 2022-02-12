import 'package:bmi_app/calculation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  int weight = 35;
  int age = 22;
  int height = 145;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff37474F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff37474F),
        title: Text("BMI Calculator",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
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
                            child: Card(
                              color: isMale ? Colors.teal : Color(0xff546E7A),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 45,
                                    color: Colors.white,
                                  ),
                                  Text("Male",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white30,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ),
                          )),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              color: !isMale ? Colors.teal : Color(0xff546E7A),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 45,
                                    color: Colors.white,
                                  ),
                                  Text("Female",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white30,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ),
                          )),
                        ],
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Color(0xff546E7A),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('height',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white30)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('$height',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white)), //
                                Text('Cm',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
                              ],
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  inactiveTickMarkColor: Color(0xff000000),
                                  activeTickMarkColor: Colors.white,
                                  thumbColor: Colors.yellow,
                                  overlayColor: Colors.yellow,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 20.0),
                                ),
                                child: Slider(
                                    min: 60,
                                    max: 210,
                                    value: height.toDouble(),
                                    onChanged: (value) {
                                      setState(() {
                                        height = value.toInt();
                                      });
                                    }))
                          ],
                        ),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Card(
                                color: Color(0xff546E7A),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Weight",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white30,
                                            fontWeight: FontWeight.w700)),
                                    Text("$weight",
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          child: Icon(Icons.add),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xffCFD8DC),
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(14),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                          child: Icon(Icons.remove),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xffCFD8DC),
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(14),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              flex: 5,
                              child: Card(
                                color: Color(0xff546E7A),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Age",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white30,
                                            fontWeight: FontWeight.w700)),
                                    Text("$age",
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          child: Icon(Icons.add),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xffCFD8DC),
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(14),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          child: Icon(Icons.remove),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xffCFD8DC),
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(14),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                      flex: 5,
                    ),
                  ],
                ),
              ),
              flex: 15,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Calculation calculation =
                      Calculation(age: age, height: height, weight: weight);
                  var bmi = calculation.calculateBMI();
                  var result = calculation.getResult();
                  var advice = calculation.getInterpretation();
                  print("Your bmi is $bmi $result $advice");
                  dialog(bmi, result, advice);
                },
                child: Container(
                    width: double.infinity,
                    color: Colors.pink,
                    alignment: Alignment.center,
                    child: Text("Calculate",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700))),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  dialog(
    String bmi,
    result,
    advice,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: new Text("Your BMI is :$bmi "),
              content: Column(
                children: [
                  Text("$result"),
                  Text("$advice"),
                ],
              ));
        });
  }
}
