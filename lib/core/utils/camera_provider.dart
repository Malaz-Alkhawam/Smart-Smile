import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraProvider extends ChangeNotifier {
  late CameraController cameraController;
  late List<CameraDescription> cameras;
  int direction = 0;

  void startCamera() async {
    List<CameraDescription> cameras = await availableCameras();

    cameraController = CameraController(
      cameras.firstWhere(
          (camera) => camera.lensDirection == CameraLensDirection.front),
      ResolutionPreset.high,
      enableAudio: false,
    );
    await cameraController.initialize();
    notifyListeners();
  }
}
