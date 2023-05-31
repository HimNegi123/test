import 'package:flutter/material.dart';

class Phone {
  String name;
  String image;

  Phone({required this.name, required this.image});
}

class HomeScreen extends StatelessWidget {
  List<Phone> phones = [
    Phone(name: 'iphone-14', image: 'assets/phone1.jpg'),
    Phone(name: 'redmi', image: 'assets/phone2.jpg'),
    Phone(name: 'poco', image: 'assets/phone3.jpg'),
    Phone(name: 'oppo', image: 'assets/phone4.jpg'),
    Phone(name: 'iqoo', image: 'assets/phone5.jpg'),
    Phone(name: 'brazzers', image: 'assets/phone6.jpg'),
    Phone(name: 'lava', image: 'assets/phone7.jpg'),
    // Add more phones as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Catalog'),
      ),
      body: GridView.builder(
        itemCount: phones.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: Image.asset(
             "assets/phone1.jpg",
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: Text(
                phones[index].name,
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
