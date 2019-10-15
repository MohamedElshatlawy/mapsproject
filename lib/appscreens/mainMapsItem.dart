import 'package:flutter/material.dart';
import 'package:mapsproject/appscreens/subMapsItem.dart';

class MainMapDetails extends StatefulWidget {
  @override
  _MainMapDetailsState createState() => _MainMapDetailsState();
}

class _MainMapDetailsState extends State<MainMapDetails> {
  final List<String> _dropdownValues = ["One", "Two", "Three", "Four", "Five"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/menu.png',scale: 5,),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('خرائط الخليج السياحية'),
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
          color: Colors.white,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
                Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          height: 40,
                          child: DropdownButton(
                            items: _dropdownValues
                                .map((value) => DropdownMenuItem(
                                      child: Text(value),
                                      value: value,
                                    ))
                                .toList(),
                            onChanged: (String value) {},
                            isExpanded: true,
                            hint: Text('ترتيب حسب'),
                          ),
                        )),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          child: RaisedButton(
                            color: Colors.blue[800],
                            textColor: Colors.white,
                            onPressed: () {},
                            child: Text('ترتيب'),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: ListTile(
                          onTap: (){
                           Navigator.push(context,MaterialPageRoute(
                                    builder: (BuildContext ctx)=>SubMapDetails()
                                  ));
                             },
                          contentPadding: EdgeInsets.only(left: 5, right: 5),
                          leading: Image.asset('assets/flag1.png'),
                          title: Text('خريطة السعودية السياحية',style: TextStyle(color: Colors.black54)),
                          trailing: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.arrow_back_ios,
                              textDirection: TextDirection.ltr,
                              color: Colors.black54,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 5, right: 5),
                          leading: Image.asset('assets/flag2.png'),
                          title: Text('خريطة الامارات السياحية',style: TextStyle(color: Colors.black54)),
                          trailing: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.arrow_back_ios,
                              textDirection: TextDirection.ltr,
                              color: Colors.black54,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 5, right: 5),
                          leading: Image.asset('assets/flag3.png'),
                          title: Text('خريطة البحرين السياحية',style: TextStyle(color: Colors.black54)),
                          trailing: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.arrow_back_ios,
                              textDirection: TextDirection.ltr,
                              color: Colors.black54,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                )
              
              
              ],
            ),
          )),
    );
  }
}
