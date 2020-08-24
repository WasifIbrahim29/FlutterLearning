import 'package:flutter/material.dart';

import 'FabWithIcons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Widget _buildFab(BuildContext context) {
  final icons = [ Icons.sms, Icons.mail, Icons.phone ];
  return FabWithIcons(
    icons: icons,
    onIconTapped: (index) {},
  );
}

class _HomeState extends State<Home> {
  final GlobalKey<PopupMenuButtonState> key = GlobalKey<PopupMenuButtonState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight =
        (size.height - kToolbarHeight - MediaQuery.of(context).padding.top) / 3;
    final double itemWidth = size.width / 2;
    final double padding = 10;

    return new Scaffold(
      floatingActionButton: _buildFab(context),
//      floatingActionButton: Container(
//        height: 32,
//        margin: EdgeInsets.fromLTRB(22,0,0,0),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//          materialTapTargetSize: MaterialTapTargetSize.padded,
//          backgroundColor: Colors.green,
//          onPressed: ,
//        ),
      appBar: new AppBar(
        actions: <Widget>[
          PopupMenuButton(
            key: key,
            onSelected: (value) {
              if (value == 0) {
                print(value);
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text('Item1'),
                ),
              ];
            },
          ),
        ],
        title: new Text(
          "Dashboard (Wasif Ibrahim)",
          style: new TextStyle(color: Colors.green, fontSize: 17.2),
        ),
        backgroundColor: Colors.white,
      ),

      body: Builder(
        builder: (context) => Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 10.0,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('First Container Tapped!'),
                            ),
                          );
                        },
                        child: Container(
//                    height: itemHeight,
                          padding: EdgeInsets.all(padding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star,size: 45,),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '215',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '3677 Tons',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Card(
                        elevation: 10.0,
                        child: InkWell(
                          splashColor: Colors.green,
                          onTap: () {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Second Container Tapped!'),
                              ),
                            );
                          },
                          child: Container(
//                    height: itemHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  color: Colors.green[600],
                                  height: 30,
                                  child: Center(
                                    child: Text('Containers at Port',style: new TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Expanded(
                                      child: Card(
                                        margin: EdgeInsets.all(1.0),
                                        elevation: 4,
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.build),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                '15',
                                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                '367 Tons',
                                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Card(
                                        margin: EdgeInsets.all(1.0),
                                        elevation: 4,
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.battery_full),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                '100',
                                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                '45 Tons',
                                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Card(
                                        margin: EdgeInsets.all(1.0),
                                        elevation: 4,
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.bluetooth),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                '45',
                                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                '998 Tons',
                                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Card(
                        elevation: 10.0,
                        child: InkWell(
                          splashColor: Colors.green,
                          onTap: () {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Third Container Tapped!'),
                              ),
                            );
                          },
                          child: Container(
//                    height: itemHeight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                child: Card(
                                  margin: EdgeInsets.all(1.0),
                                  elevation: 4,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.desktop_mac),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Macbook"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("2546 Tons",style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),)
                                      ],
                                    ),
                                  ),

                                ),
                              ),
                              Expanded(
                                child: Card(
                                  margin: EdgeInsets.all(1.0),
                                  elevation: 4,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.desktop_windows),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Windows"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("1024 Tons",style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],

                          ),

                          ),
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 10.0,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Fourth Container Tapped!'),
                            ),
                          );
                        },
                        child: Container(
//                    height: itemHeight,
                          padding: EdgeInsets.all(padding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.call,size: 45,),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '323',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '5433 Tons',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 10.0,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Fifth Container Tapped!'),
                            ),
                          );
                        },
                        child: Container(
//                    height: itemHeight,
                          padding: EdgeInsets.all(padding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.wifi,size: 45,),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '675',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '3237 Tons',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 10.0,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Sixth Container Tapped!'),
                            ),
                          );
                        },
                        child: Container(
//                    height: itemHeight,
                          padding: EdgeInsets.all(padding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.cloud,size: 45,),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '315',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '3457 Tons',
                                style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

//        child: AspectRatio(
//          aspectRatio: 0.4/1.3,
//          child: new GridView.count(
//            crossAxisCount: 1,
//            children: <Widget>[
//              new Container(
//                child: new Card(
//                  child: new Column(
//                    children: <Widget>[
//                      height: 100.0,
//
//                      new Text("wasif"),
//                    ]
//                  )
//                ),
//              )
//            ],
//          ),
//        )

//      ),
//      body: GridView.count(
//          crossAxisCount: 2,
//        children: <Widget>[
//          new Container(
//            child: new Text("Wasif"),
//          ),
//
//          new Container(
//            child: new Text("Ibrahim"),
//          )
//        ],
//      ),
    );
  }
}
