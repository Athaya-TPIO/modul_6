import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {"name": "Athaya Muluq", "subtitle": "Teknik Informatika"},
    {"name": "Priadinata", "subtitle": "Fisika"},
    {"name": "Shoo Toru", "subtitle": "Olah Raga"},
    {"name": "Arif Mahran", "subtitle": "Biologi"},
    {"name": "Arsy Miranti", "subtitle": "Sistem Komputer"},
    {"name": "Ade Nuri", "subtitle": "Psikologi"},
    {"name": "Fitriani Chairi", "subtitle": "Ilmu Komputer"},
  ];

  String getInitials(String name) {
    List<String> parts = name.split(' ');
    return parts.length > 1 ? parts[0][0] + parts[1][0] : name.substring(0, 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.Builder')),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                getInitials(item['name']!),
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text(item['name']!),
            subtitle: Text(item['subtitle']!),
          );
        },
      ),
    );
  }
}
