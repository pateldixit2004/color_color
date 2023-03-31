import 'dart:math';

import 'package:flutter/material.dart';

class Color_Screen extends StatefulWidget {
  const Color_Screen({Key? key}) : super(key: key);

  @override
  State<Color_Screen> createState() => _Color_ScreenState();
}

class _Color_ScreenState extends State<Color_Screen> {
  int a=0,b=0,c=0,d=0,e=0,f=0;


  List temp = [];

  List c1=[
    Colors.amber,
    Colors.blue,
    Colors.pink,
    Colors.purple,
    Colors.indigo,
    Colors.black,
    Colors.yellow,
    Colors.deepOrange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "Color palte",
                  style: TextStyle(fontSize: 30,color: Color(0xff3bff9 )),
                ),

              ],


            )),
            Container(
              height: 365,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.tealAccent,border: Border.all(color: Colors.black26)),
              child: Column(
                children: [
                  plate(c1[a]),
                  plate(c1[b]),
                  plate(c1[c]),
                  plate(c1[d]),
                  plate(c1[e]),
                  plate(c1[f]),
                ],

              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Random random = Random();
                  a= random.nextInt(8);
                  b= random.nextInt(8);
                  while(b==a)
                  {
                    b= random.nextInt(8);

                  }

                  c= random.nextInt(8);
                  while(b==a||c==a)
                  {
                    c= random.nextInt(8);

                  }
                  d = random.nextInt(8);
                  while(d == a || d==b || d==c)
                  {
                    d = random.nextInt(8);
                  };

                  e = random.nextInt(8);
                  while(e == a || e==b || e==c || e==d)
                  {
                    e = random.nextInt(8);
                  };

                  f = random.nextInt(8);
                  while(f == a || f==b || f==c || f==d || f==e)
                  {
                    f = random.nextInt(8);
                  };


                  temp=[a,b,c,d,e,f];

                });
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
                child: Text("Genter"),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget plate(Color c1)
  {
    return Container(
      height: 60,
      width: double.infinity,
      color: c1,
    );
  }
}
