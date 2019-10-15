import 'package:flutter/material.dart';
import 'package:mapsproject/appscreens/travelService.dart';

class SubMapDetails extends StatefulWidget {
  @override
  _SubMapDetailsState createState() => _SubMapDetailsState();
}

class _SubMapDetailsState extends State<SubMapDetails> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset(
          'assets/menu.png',
          scale: 5,
        ),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('خرائط النمسا السياحية'),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 170,
              color: Colors.black,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Opacity(
                    child: Image.asset(
                      'assets/map_t.png',
                      fit: BoxFit.cover,
                    ),
                    opacity: .8,
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    TravelServices()));
                      },
                      contentPadding: EdgeInsets.only(left: 5, right: 5),
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3
                          )
                        ),
                        child: Image.asset('assets/offer.png'),
                      ),
                      title: Text('عروض فيينا السياحية',style: TextStyle(color: Colors.black54),),
                     ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    TravelServices()));
                      },
                      contentPadding: EdgeInsets.only(left: 5, right: 5),
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3
                          )
                        ),
                        child: Image.asset('assets/offer.png'),
                      ),
                      title: Text('عروض فيينا السياحية',style: TextStyle(color: Colors.black54),),
                     ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    TravelServices()));
                      },
                      contentPadding: EdgeInsets.only(left: 5, right: 5),
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3
                          )
                        ),
                        child: Image.asset('assets/offer.png'),
                      ),
                      title: Text('عروض فيينا السياحية',style: TextStyle(color: Colors.black54),),
                     ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    TravelServices()));
                      },
                      contentPadding: EdgeInsets.only(left: 5, right: 5),
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3
                          )
                        ),
                        child: Image.asset('assets/offer.png'),
                      ),
                      title: Text('عروض فيينا السياحية',style: TextStyle(color: Colors.black54),),
                     ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    TravelServices()));
                      },
                      contentPadding: EdgeInsets.only(left: 5, right: 5),
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3
                          )
                        ),
                        child: Image.asset('assets/offer.png'),
                      ),
                      title: Text('عروض فيينا السياحية',style: TextStyle(color: Colors.black54),),
                     ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  
                  
                    ],
              ),
            )
          ],
        ),
      ),
  
      )
  
    );
  }
}
