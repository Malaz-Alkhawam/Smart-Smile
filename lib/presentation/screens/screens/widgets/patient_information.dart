import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget information() {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Container(
        width: 470,
        height: 70,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black12),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(0, 3), blurRadius: 3)
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.person,
              color: Colors.indigoAccent,
              size: 30,
            ),
            // name
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 3), blurRadius: 3)
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.date_range,
                        color: Colors.indigoAccent,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 3), blurRadius: 3)
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.man,
                        color: Colors.indigoAccent,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        width: 470,
        height: 70,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black12),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(0, 3), blurRadius: 3)
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.timer_outlined,
              color: Colors.indigoAccent,
              size: 30,
            ),
            // name
          ],
        ),
      ),
    ],
  );
}
