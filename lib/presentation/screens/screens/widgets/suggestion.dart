import 'package:flutter/material.dart';
import 'package:smart_smile/presentation/screens/screens/screens/main_patient_page.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildSuggestedPhoto(context, 'images/teeth.jpg'),
          SizedBox(
            width: 10,
          ),
          buildSuggestedPhoto(context, 'images/teeth.jpg'),
          SizedBox(
            width: 10,
          ),
          buildSuggestedPhoto(context, 'images/teeth.jpg'),
        ],
      ),
    );
  }

  Widget buildSuggestedPhoto(BuildContext context, imagePath) {
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              offset: Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      onLongPress: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const PatientPage()));
      },
    );
  }
}
