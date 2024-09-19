
import 'package:flutter/material.dart';

ButtonStyle appAddButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    backgroundColor: Colors.green
  );
}

ButtonStyle appIconButton(){
  return IconButton.styleFrom(
    iconSize: 25,
    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0)
  );
}

TextStyle addButtonTextStyle(){
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );
}


InputDecoration appInputDecoration(textOfLabel){
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
    border: OutlineInputBorder(
         borderSide: const BorderSide(color: Colors.red, width:3),
         borderRadius: BorderRadius.circular(10)
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.green, width: 2),
      borderRadius: BorderRadius.circular(10)
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green.shade500, width: 2),
      borderRadius: BorderRadius.circular(10)
    ),
    hintText: textOfLabel,
    label: Text(textOfLabel)

  );
}

