import 'package:flutter/material.dart';
import 'constants.dart';

class resu extends StatelessWidget {
  const resu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0FF054379),
        scaffoldBackgroundColor: Color(0x0FF12003e),
        appBarTheme: AppBarTheme(
          color: Color(0x0FF032039),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ) ,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI Calculator")),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          automaticallyImplyLeading: true,
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(top: 30,),
                    child: Text(
                        "Your Result",
                        style: res,
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                      width: 380,
                      decoration: BoxDecoration(
                        color: inactive,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Text(bmi_s,style: des,),
                          ),
                          Container(
                            child: Text(bmi.toStringAsFixed(2),style: bmi_t,),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(bmi_desc,style: dest,),
                          ),
                        ],
                      ),
                ),),
                SizedBox(height: 20.0,),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      int height = 130;
                      int weight = 40;
                      int age = 18;
                      double bmi = 0;
                      Color bmi_colour = Colors.white;
                      String bmi_s = "";
                      String bmi_desc = "";
                      Navigator.pop(context);
                    },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0x0ffff0043),
                    ),
                    child: Center(child: Text("Recalculate",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                    ),
                    ),
                  ),
                ),
                )
              ],
            ),
          ),
        ),
    );
  }
}