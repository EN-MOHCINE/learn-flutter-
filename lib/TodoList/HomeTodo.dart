import 'package:flutter/material.dart';
import 'package:flutter_application_1/TodoList/Todo.dart';

class HomeTodo extends StatefulWidget {
  HomeTodo({Key? key}) : super(key: key);

  @override
  State<HomeTodo> createState() => _HomeTodoState();
}

class _HomeTodoState extends State<HomeTodo> {
  final _formKey = GlobalKey<FormState>();
  final ListData = Todo.TodoList();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  // submit
  void _submit() {
    // print  data form
    print("title : ${titleController.text}");
    print("description : ${descriptionController.text}");
    print("status : ${selectedValue}");
    setState(() {
      ListData.add({
        "title": titleController.text,
        "description": descriptionController.text,
        "status": selectedValue.toString(),
      });
    });
    titleController.clear();
    descriptionController.clear();
    selectedValue = TodoStatus.notYetStarted;
  }

  @override
  void initState() {
    print("testttttt");
    super.initState();
  }

  TodoStatus selectedValue = TodoStatus.notYetStarted;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Text("App Todo List"),
        backgroundColor: Colors.indigo,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            // color: const Color.fromARGB(255, 226, 86, 86),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  // color: const Color.fromARGB(255, 204, 86, 86),
                  child: ListView.builder(
                    itemCount: ListData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(10.0),
                        child: ListTile(
                          title: Text(ListData[index]["title"]),
                          subtitle: Text(ListData[index]["description"]),
                          trailing: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith((
                              states,
                            ) {
                              if (ListData[index]["status"] ==
                                  "notYetStarted") {
                                return Colors.red;
                              } else if (ListData[index]["status"] ==
                                      "inProgress" ||
                                  ListData[index]["status"] == "Done") {
                                return Colors.green;
                              }
                            }),
                            value: ListData[index]["status"] == "notYetStarted"
                                ? false
                                : true,
                            onChanged: (value) {
                              setState(() {
                                ListData[index]["status"] == "notYetStarted"
                                    ? ListData[index]["status"] = "inProgress"
                                    : ListData[index]["status"] =
                                          "notYetStarted";
                              });
                            },
                          ),
                          leading: IconButton(
                            onPressed: () {
                              setState(() {
                                ListData.removeAt(index);
                              });
                              print(index);
                            },
                            icon: Icon(Icons.delete), // button delete ,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // espace for formulaire
              Container(
                height: 300,
                padding: const EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Form(
                  key: _formKey,
                  child: Column(
                    // adding margin in top
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Status',
                        ),
                        value: selectedValue,
                        items: TodoStatus.values.map((dynamic value) {
                          return DropdownMenuItem<dynamic>(
                            value: value,
                            child: Text(value.toString()),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                      SizedBox(height: 10.0),
                      Center(
                        child: ElevatedButton(
                          child: const Text("Submit"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 10.0,
                            padding: const EdgeInsets.fromLTRB(
                              30,
                              10.0,
                              30.0,
                              10.0,
                            ),

                            textStyle: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: _submit,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
