import 'package:flutter/material.dart';

class TravelServices extends StatefulWidget {
  @override
  _TravelServicesState createState() => _TravelServicesState();
}

class _TravelServicesState extends State<TravelServices> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/menu.png',
          scale: 5,
        ),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('خدمات المسافر'),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(15, (index) {
            return Container(
              
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset('assets/6.png',fit: BoxFit.cover,),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Image.asset('assets/title_background.png',scale: 3,),
                 )

                 ,Align(
                   alignment: Alignment.bottomCenter,
                   child: Text('اسم الخدمة'),
                 )
                ],
              ),
              
              color: Colors.grey,
            );
          }),
        ),
      ),
    );
  }
}
