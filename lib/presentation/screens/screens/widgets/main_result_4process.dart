import 'package:flutter/material.dart';

Widget mainResult() {
  return Center(
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          width: 250,
          height: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "images/teeth.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.repeat,
                ),
                color: Colors.indigoAccent,
                onPressed: () {
                  //show old photo
                },
              ),
            ),
          ),
        )
      ],
    ),
  );
}
