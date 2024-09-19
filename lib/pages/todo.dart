import 'package:flutter/material.dart';
import 'package:todoapp/style.dart';

import '../components/components.dart';

class Todo extends StatefulWidget{
  const Todo({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TodoViewPage();
  }

}

class TodoViewPage extends State<Todo>{
  String formValue = '';
  List toDoList = [];

  inputOnChanged(content){
    setState(() {
      formValue = content;
    });
  }

  addItem(){
    setState(() {
      toDoList.add({"item": formValue});
    });
  }

  removeItem(index){
    setState(() {
      toDoList.removeAt(index);
    });

  }

  updateItem(index, item){
    setState(() {
      toDoList[index] = {"item": item};
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:applicationAppBar(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                       flex: 50,
                       child: TextFormField(
                         onChanged: (content){inputOnChanged(content);},
                         decoration: appInputDecoration('Todo'),
                       ),
                    ),
                    const Expanded(child: Text('')),
                    Expanded(
                        flex: 20,
                        child: ElevatedButton(
                          onPressed: (){
                            addItem();
                          },
                          style: appAddButtonStyle(),
                          child: Text('Add', style: addButtonTextStyle(),),
                        )
                    )
                  ],
                )
            ),
            Expanded(
               flex: 90,
               child: ListView.builder(
                   itemCount: toDoList.length,
                   itemBuilder: (context, index){
                     return Card(
                        child: customSizedBox(
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 80,
                                  child: Text(toDoList[index]['item']),
                              ),
                              Expanded(
                                  flex: 20,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: IconButton(
                                            onPressed: (){
                                              updateItem(index, formValue);
                                            },
                                            style:appIconButton(),
                                            color: Colors.black,
                                            icon: const Icon(Icons.edit),
                                          )
                                      ),
                                      Expanded(
                                        child: IconButton(
                                          onPressed: (){
                                            removeItem(index);
                                          },
                                          style: appIconButton(),
                                          color: Colors.red,
                                          icon: const Icon(Icons.delete),
                                        ),
                                      )
                                    ],                                  )
                              )
                            ],
                          )
                        ),
                     );
                   },
               )
            ),
          ],
        ),
      )
    );
  }
}