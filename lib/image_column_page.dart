import 'package:flutter/material.dart';

class ImageColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image & Column')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/spon.jpg', width: 150, height: 150),
            SizedBox(height: 20),
            Text('Nama: Athaya Muluq Priadinata', style: TextStyle(fontSize: 18)),
            Text('Jurusan: Teknik Informatika', style: TextStyle(fontSize: 18)),
            Text('Universitas: palangkaraya', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
