import 'package:flutter/material.dart';

class todolist extends StatefulWidget {
  const todolist({super.key});


  @override
  State<todolist> createState() => _todolistState();
}


class _todolistState extends State<todolist> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("오늘의 할일이 무엇인가요?"),
      ),
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("할 일",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              ),
              TextField(
                decoration: InputDecoration(
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("날짜",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                    
                  ),
                  Text(
                    _selectedDate != null
                        ? _selectedDate.toString().split(" ")[0]
                        : "",
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950), 
                            lastDate: DateTime(2050),
                        ).then((selectedDate){
                          setState(() {
                            _selectedDate = selectedDate;
                          });
                        });
                      },
                      child: Text("날짜 선택"),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("시간",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("메모",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
