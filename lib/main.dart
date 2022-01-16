import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(), //
    );
  }
}

class HomePage extends StatelessWidget {
  //สร้างให้ Homepage บน
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PIG WEIGHT : BY PASINEE AREEAUE CODE NUMBER 620710672')
        ),
        // ใส่ค่า : nullก็ได้

        body: Container(
            decoration : BoxDecoration(
              //Alignment.center, ปรับกลาง .bottomleft ล่างซ้า
                border: Border.all(width: 3.0,color: Colors.purple),

            ),

            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),


            child: Container(
                alignment: Alignment.topCenter,

                child: Center(
                  
                    child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('PIG WEIGHT',style: TextStyle(fontSize: 20.0,
                        color:Colors.pink),
                    ),
                    Text('CALCULATOR',style: TextStyle(fontSize: 30.0,
                        color:Colors.pink),),
                    Image.asset('pig/images/pig.png',width: 400,),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('LENGTH(cm)                                               ',),
                          Text('                                                 GIRTH(cm)',)
                          ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(textAlign: TextAlign.left,),
                    ),

                    ElevatedButton(
                      child: Text('CALALATE'),
                      onPressed: () {},

                    )
                  ],

                )
                )
            )
        )
    ); //*
  }
}
