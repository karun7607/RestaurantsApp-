import 'package:flutter/material.dart';

Widget titlebar(String title, String? subtitle) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
    child: Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(fontSize: 18.8, color: Colors.black),
            )),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            subtitle!,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
