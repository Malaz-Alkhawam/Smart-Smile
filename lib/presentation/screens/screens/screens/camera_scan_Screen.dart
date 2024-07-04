import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/utils/camera_provider.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/camera_buttom_navigation_bar.dart';

class CameraScanScreen extends StatelessWidget {
  const CameraScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CameraProvider>(
      builder: (context, value, child) => Scaffold(
        bottomNavigationBar: const CameraNavigationBar(),
        body: value.cameraController.value.isInitialized
            ? Stack(
                children: [
                  CameraPreview(value.cameraController),
                  GestureDetector(
                    onTap: () {},
                    child: button(
                        Icons.flip_camera_ios_outlined, Alignment.bottomLeft),
                  ),
                  GestureDetector(
                    onTap: () {
                      value.cameraController.takePicture().then((XFile? file) {
                        // if (mounted) {
                        //   if (file != null) {
                        //     print("Picture saved to ${file.path}");
                        //   }
                        // }
                      });
                    },
                    child: button(
                        Icons.camera_alt_outlined, Alignment.bottomCenter),
                  ),
                  // Align(
                  //   alignment: AlignmentDirectional.topCenter,
                  //   child: Text(
                  //     "My Camera",
                  //     style: TextStyle(
                  //       fontSize: 30,
                  //     ),
                  //   ),
                  // ),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  Widget button(IconData icon, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
        ),
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
