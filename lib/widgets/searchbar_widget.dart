import 'package:flutter/material.dart';

Widget searchBar() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
    child: Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
            )
          ]),
      child: TextField(
        cursorColor: Colors.grey,
        cursorHeight: 20,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,

            // disabledBorder: InputBorder.none,
            hintText: "Find Restourants",
            hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17.5),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              Icons.tune,
              color: Colors.grey,
            )),
      ),
    ),
  );
}
