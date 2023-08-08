import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tile.dart';
import 'reuse.dart';
import 'constants.dart';
import 'result.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
        // backgroundColor: Color(0x0FF1D5B79),
      ),
      body: SafeArea(child: calc()),
    );
  }
}

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  List<Color> sel = [
    inactive,
    inactive
  ];
  List<Color> gend (a){
    if(sel[0]==active && a == gender.male){
      sel[0] = inactive;
    }
    else if(sel[1]==active && a == gender.female){
      sel[1] = inactive;
    }
    else if (a == gender.male){
      sel[0] = active;
      sel[1] = inactive;
    }
    else if(a == gender.female){
      sel[0] = inactive;
      sel[1] = active;
    }
    return sel;
  }
  List<Color> c = [
    inactive,
    inactive
  ];

  calc_bmi(){
    bmi = weight/(height*height/10000);
    if(bmi<18.5){
      bmi_colour = Colors.orangeAccent;
      bmi_s = "Underweight";
      bmi_desc = "Try to bulk up. Increase your Calorie Intake.";
    }
    else if(bmi>18.5 && bmi<24.9){
      bmi_colour = Colors.green;
      bmi_s = "Normalweight";
      bmi_desc = "You are Normal. Try to increase muscle mass.";
    }
    else if(bmi>24.9 && bmi<29.9){
      bmi_colour = Colors.deepOrange;
      bmi_s = "Overweight";
      bmi_desc = "You have Body Weight higher than Normal Weight.Try to Workout more.";
    }
    else{
      bmi_colour = Colors.red;
      bmi_s = "Obese";
      bmi_desc = "You are Body weight is much higher. Try to workout and be in a Calorie Deficit.";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                    onTap: (){
                      print(c);
                      setState(() {
                        c = gend(gender.male);
                        print(c);
                      });
                    },
                    child: reuse(c[0],tiles(FontAwesomeIcons.mars,"Male"),)
                ),
              ),
              Expanded(
                child: GestureDetector(
                    onTap: (){
                      print(c);
                      setState(() {
                        c = gend(gender.female);
                        print(c);
                      });
                    },
                    child: reuse(c[1],tiles(FontAwesomeIcons.venus,"Female"),)
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: inactive,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                "Height",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                        height.toString(),
                        style: hetxt,
                      ),
                    SizedBox(width: 10,),
                    Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    activeTrackColor: Color(0x0FF9152fb),
                    thumbColor: Color(0x0FF4f04cd),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    overlayColor: Color(0x0FF9152fb),
                    inactiveTrackColor: Colors.grey,
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
            ]
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: reuse(inactive,
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight",style: tiletxt,),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(weight.toString(),style: hetxt,),
                                SizedBox(width: 5.0,),
                                Text("Kg",style: TextStyle(fontSize: 25,)),
                            ]
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  btcard(FontAwesomeIcons.minus,(){
                                    setState(() {
                                      if(weight>40) weight--;
                                    });
                                  }),
                                  SizedBox(width: 10,),
                                  btcard(FontAwesomeIcons.plus,() {
                                    setState(() {
                                      weight++;
                                    });
                                  })
                                ],
                            ),
                          ],
                        )
                )
                ),
              ),
              Expanded(
                child: reuse(inactive,
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age",style: tiletxt,),
                            SizedBox(height: 5,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(age.toString(),style: hetxt,),
                                  SizedBox(width: 5.0,),
                                  Text("yrs",style: TextStyle(fontSize: 25,)),
                                ]
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                btcard(FontAwesomeIcons.minus,(){
                                  setState(() {
                                    if(age>18) age--;
                                  });
                                }),
                                SizedBox(width: 10,),
                                btcard(FontAwesomeIcons.plus,() {
                                  setState(() {
                                    age++;
                                  });
                                })
                              ],  
                            ),
                          ],
                        )
                    )
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: sub,
            ),
            width: double.infinity,
            child: TextButton(
              onPressed: (){
                  calc_bmi();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => resu()));
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),),
            ),
          ),
        )
      ],
    );
  }
}

class btcard extends StatelessWidget {

  btcard(@required this.icon,@required this.onPressed);
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon,color: Colors.white,),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56
      ),
      fillColor: Colors.grey,
      shape: CircleBorder(),
    );
  }
}




