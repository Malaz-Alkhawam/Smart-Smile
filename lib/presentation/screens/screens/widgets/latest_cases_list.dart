import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_smile/presentation/screens/screens/screens/camera_scan_screen.dart';
import 'package:smart_smile/presentation/screens/screens/screens/main_page.dart';
import 'package:smart_smile/presentation/screens/screens/screens/main_patient_page.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/patient.dart';

class LatestCasesList extends StatelessWidget {
  List<Patient> patients = [
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 0),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 1),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 2),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 3),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 4),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 5),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 6),
    const Patient(image: "images/teeth.jpg", name: "Nour Esrawi", ID: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: patients.length,
        itemBuilder: (context, index) {
          final patient = patients[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PatientPage(),
              ));
            },
            child: Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 3), blurRadius: 3)
                ],
              ),
              margin:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(patient.image),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  )),
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.indigoAccent,
                              ),
                              Text(
                                ' ${patient.name}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.key_rounded,
                                color: Colors.indigoAccent,
                              ),
                              Text(
                                ' ${patient.ID}',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


//