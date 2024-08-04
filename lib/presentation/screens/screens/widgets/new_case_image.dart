import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/image_picker.dart';

class ImageNewCase extends StatelessWidget {
  late PickedFile imageFile;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          width: 350,
          height: 350,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "images/teeth.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.add_a_photo,
                ),
                color: Colors.indigoAccent,
                onPressed: () {
                  showImagePickerOption(context);
                },
              ),
            ),
          ),
        )
      ]),
    );
  }
}
