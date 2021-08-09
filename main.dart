import 'package:flutter/material.dart';

//I couldn't adjust lay outs to work for every device

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Align(
                child: Image.network(
                  "https://shepherdtraveller.com/wp-content/uploads/2021/04/oeschinensee-camping-Lakes-in-Switzerland-1024x683.jpg",
                  semanticLabel: "Scene",
                ),
                alignment: Alignment.topCenter),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Text(
                            "Kanderstag, Switzerland",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 0, 0, 0.3)),
                            textAlign: TextAlign.left,
                          ),
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 4.6,
                              top: 10),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    margin: EdgeInsets.only(left: 17, top: 15),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      child: Icon(Icons.star, size: 35, color: Colors.red),
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6.6,
                      ),
                    ),
                    Container(
                      child: Text(
                        "41",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                  ])
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(children: [
                    Icon(
                      Icons.call,
                      size: 35,
                      color: Colors.blue,
                    ),
                    Container(
                      child: Text(
                        "CALL",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                      margin: EdgeInsets.only(top: 8),
                    )
                  ]),
                  margin: EdgeInsets.only(top: 20),
                ),
                Container(
                  child: Column(children: [
                    Icon(
                      Icons.add_location_alt_sharp,
                      size: 35,
                      color: Colors.blue,
                    ),
                    Container(
                      child: Text(
                        "ROUTE",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                      margin: EdgeInsets.only(top: 8),
                    )
                  ]),
                  margin: EdgeInsets.only(top: 20),
                ),
                Container(
                  child: Column(children: [
                    Icon(
                      Icons.share,
                      size: 35,
                      color: Colors.blue,
                    ),
                    Container(
                      child: Text(
                        "SHARE",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                      margin: EdgeInsets.only(top: 8),
                    )
                  ]),
                  margin: EdgeInsets.only(top: 20),
                )
              ],
            ),
            Container(
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 3.5,
              margin: EdgeInsets.only(top: 25),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.orange, TO INDICATE SIZE OF CONTAINER
      ),
      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
    );
  }
}
