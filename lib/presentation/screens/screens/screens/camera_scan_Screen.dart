import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/utils/camera_provider.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/camera_buttom_navigation_bar.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/camera_scan_app_bar.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/default_button.dart';

class CameraScanScreen extends StatelessWidget {
  const CameraScanScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<CameraProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: const CameraScanAppBar(),
        bottomNavigationBar: const CameraNavigationBar(),
        body: value.cameraController.value.isInitialized
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: screenHeight * 0.40,
                    width: screenWidth,
                    child: CameraPreview(value.cameraController),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DefaultButton(
                            width: screenWidth * 0.2,
                            height: screenHeight * 0.1,
                            onPressed: () {},
                            iconSize: 30,
                            icon: Icons.repeat_rounded,
                            iconColor: Colors.indigoAccent,
                          ),
                          DefaultButton(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.1,
                              iconSize: 50,
                              onPressed: () {},
                              icon: Icons.circle_outlined,
                              iconColor: Colors.indigoAccent),
                          DefaultButton(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.1,
                              onPressed: () {},
                              iconSize: 30,
                              icon: Icons.camera_alt_outlined,
                              iconColor: Colors.indigoAccent),
                        ],
                      ),
                    ),
                  ),
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
