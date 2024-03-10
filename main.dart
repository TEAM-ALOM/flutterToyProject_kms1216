import 'package:flutter/material.dart';
import "package:to_do_list/todolist.dart";

 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: [
            SizedBox(
             height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check),
                SizedBox(width: 10,),
                Text("ToDoList",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30),)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> todolist()));
                    },
                    icon: Icon(Icons.control_point)
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("오늘의 할 일",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("일주일 간  해야할 일",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_down),
                //IconButton(onPressed: onPressed, icon: Icon(Icons.keyboard_arrow_down),),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("이번 달의 할 일",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_down),
                //IconButton(onPressed: onPressed, icon: Icon(Icons.keyboard_arrow_down),),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("지금 할 일",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_down),
                //IconButton(onPressed: onPressed, icon: Icon(Icons.keyboard_arrow_down),),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

