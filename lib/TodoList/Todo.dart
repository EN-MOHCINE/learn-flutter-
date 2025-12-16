import 'package:flutter/material.dart';


enum TodoStatus {
  notYetStarted,
  inProgress,
  Done
}
class Todo{
  int id;
  String title;
  TodoStatus status = TodoStatus.notYetStarted;
  Todo({required this.id,required this.title, this.status = TodoStatus.notYetStarted});

   
 static List<Map<String, dynamic>> ListData = [
    {"title": "titl1", "description": "des1", "status": "notYetStarted"},
    {"title": "titl2", "description": "des2", "status": "notYetStarted"},
    {"title": "titl2", "description": "des2", "status": "notYetStarted"},
    {"title": "titl1", "description": "des1", "status": "notYetStarted"},
    
  ];

  // return data 
  static List<dynamic> TodoList(){
    return ListData;
  }



  // add data 
  static void addData (param){
    print(param);
    ListData = [...ListData, param];
  }


}


