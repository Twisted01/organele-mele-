import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Model3DPage extends StatefulWidget {
  final String modelPath;

  Model3DPage({required this.modelPath});

  @override
  _Model3DPageState createState() => _Model3DPageState();
}

class _Model3DPageState extends State<Model3DPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModelViewer(
        src: widget.modelPath,
        alt: 'Model 3D',
        arScale: ArScale.auto,
        ar: true, 
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}
