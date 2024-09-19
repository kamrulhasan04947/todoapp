import 'package:flutter/material.dart';

SizedBox customSizedBox({required child}){
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: child,
    ),
  );
}


AppBar applicationAppBar(){
  return AppBar(
    title: const Text('To Do Application'),
    centerTitle: true,
    backgroundColor: Colors.green,
  );
}



