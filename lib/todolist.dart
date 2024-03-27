import 'package:flutter/material.dart';

class todolist extends StatefulWidget {
  const todolist({super.key});


  @override
  State<todolist> createState() => _todolistState();
}


class _todolistState extends State<todolist> {
  DateTime? _selectedDate;
  TimeOfDay initialTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("오늘의 할일이 무엇인가요?"),
      ),
      backgroundColor: Colors.orangeAccent,
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
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("시간",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal
                  ),
                  ),
                  Text(
                    '${initialTime.hour}:${initialTime.minute}',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
                  ),
                  ElevatedButton(
                      onPressed: () async{
                        final TimeOfDay? timeOfDay = await showTimePicker(
                          context: context,
                          initialTime: initialTime,
                        );
                        if(timeOfDay != null){
                          setState((){
                            initialTime=timeOfDay;
                          });
                        }
                      },
                      child: Text('시간 선택'),
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
              ),
              TextField(
                textAlignVertical: TextAlignVertical.top,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 120),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}