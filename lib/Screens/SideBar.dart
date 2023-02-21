import 'package:flutter/material.dart';

class SideBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              leading: Icon(Icons.home),
              title: Text('Bosh Sahifa',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
            Divider(height: 0),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('CategoriesPage');
              },
              leading: Icon(Icons.category),
              title: Text('Kategoriyalar',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
