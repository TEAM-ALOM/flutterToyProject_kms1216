import 'package:flutter/material.dart';
import 'package:to_do_list/todolist.dart';


class HomeScreen extends StatefulWidget {
  const  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=> const todolist()));
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "오늘의 할 일",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                tilePadding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: Text("할 일을 작성해주세요"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              ExpansionTile(
                title: Text(
                  "일주일 간 해야할 일",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                tilePadding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: Text(""),
                  ),
                ],
              ),
               SizedBox(
                 height: 30,
               ),
               ExpansionTile(
                 title: Text(
                   "이번 달의 할 일",
                   style: TextStyle(
                     fontSize: 20,
                   ),
                 ),
                 tilePadding: EdgeInsets.zero,
                 children: [
                   ListTile(
                     title: Text(""),
                   ),
                 ],
               ),
              SizedBox(
                height: 50,
              ),
              ExpansionTile(
                title: Text(
                  "지금 할 일",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                tilePadding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: Text(""),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

