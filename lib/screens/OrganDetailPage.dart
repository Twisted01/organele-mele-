import 'package:flutter/material.dart';
import 'models/Organ.dart';
import 'Model3DPpage.dart';

class OrganDetailPage extends StatelessWidget {
  final Organ organ;

  OrganDetailPage({required this.organ});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalii',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.4,
              child: Image.asset(
                organ.imageAsset,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                organ.details,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 0, bottom: 16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Model3DPage(modelPath: organ.model3DPath),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Text('Vezi in 3D', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
