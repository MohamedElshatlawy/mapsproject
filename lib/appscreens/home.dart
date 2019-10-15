import 'package:flutter/material.dart';

import 'mainMapsItem.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        title: Image.asset('assets/logo2.png'),
        centerTitle: true,
        actions: <Widget>[
          Image.asset(
            'assets/notification.png',
            width: 50,
            height: 50,
          )
        ],
      ),
      body:Container(
        padding: EdgeInsets.only(top: 5),
        child:  ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              width: double.infinity,
              height: 220,
              color: Colors.white,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Image.asset(
                            'assets/4.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Row(
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/map.png',
                                      scale: 5,
                                    ),
                                    Text('عدد الخرائط: 3 خرائط'),
                                  ],
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext ctx) =>
                                                MainMapDetails()));
                                  },
                                  textColor: Colors.white,
                                  color: Colors.blue[800],
                                  child: Text('عرض الخرائط'),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                  Positioned(
                    width: 190,
                    height: 50,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/title_background.png',
                          width: 190,
                        ),
                        Center(
                            child: Container(
                          padding: EdgeInsets.only(top: 7, left: 5, right: 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'خرائط الخليج السياحية',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Gulf tourism map',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                    bottom: 220 / 4.5,
                  ),
                ],
              ));
        },
      ),
    
      )
    
    );
  }
}
