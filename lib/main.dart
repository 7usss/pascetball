import 'package:flutter/material.dart';

void main() {
  runApp(Pascetpall());
}

class Pascetpall extends StatefulWidget {

  @override
  State<Pascetpall> createState() => _PascetpallState();
}

class _PascetpallState extends State<Pascetpall> {
    int teamApoint =0;
    int teamBpoint =0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(children: [
                    Text('Team A',style: TextStyle(fontSize: 40),),
                    Text('$teamApoint',style: TextStyle(fontSize: 90),),
                    ElevatedButton(onPressed: (){setState((){teamApoint++;});}, child: Text('1 point'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),//Spacer(flex: 1,),
                    ElevatedButton(onPressed: (){setState((){teamApoint+=2;});}, child: Text('2 point'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),//Spacer(flex: 1,),
                    ElevatedButton(onPressed: (){setState((){teamApoint+=3;});}, child: Text('3 point'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),//Spacer(flex: 30,),
                  ],
                  ),
                ),
                Container(height: 250,child: VerticalDivider(color: Color(0xffFFFF8900),thickness: 3,)),
                 Container(
                   height: 500,
                   child: Column(children: [
                    Text('Team B',style: TextStyle(fontSize: 40),),
                    Text('$teamBpoint',style: TextStyle(fontSize: 90),),
                    ElevatedButton(onPressed: (){setState((){teamBpoint++;});}, child: Text('1 point'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),//Spacer(flex: 1,),
                    ElevatedButton(onPressed: (){setState((){teamBpoint+=2;});}, child: Text('2 point'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),//Spacer(flex: 1,),
                    ElevatedButton(onPressed: (){setState((){teamBpoint+=3;});}, child: Text('3 point'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),//Spacer(flex: 30,),
                ],
                ),
                 ),
              ],
            ),
            ElevatedButton(onPressed: (){setState((){teamApoint=0;teamBpoint=0;});}, child: Text('Reset'),style:ElevatedButton.styleFrom(primary: Color(0xffFFFF8900)) ,),
          ],
        ),
        appBar: AppBar(
          title: Text("Point Counter",),
          backgroundColor: const Color(0xffFFFF8900),),
      ),
      );
  }
}
