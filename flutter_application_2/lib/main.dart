import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('asset/images/ms.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'MS Abbsi',
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(height: 10),
              Text('Direct of UX at Google', style: TextStyle(fontSize: 25)),
              SizedBox(height: 10),
              Text('Mountain View CA + Programmer',
                  style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text(
                  'Conect',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Text('4 Shared Connections'),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('asset/images/ms.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('asset/images/ms.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('asset/images/ms.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('asset/images/ms.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[20],
              child: Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            SizedBox(width: 30),
            Container(
              height: 50.0,
              width: 80.0,
              child: Text(
                '2.5k Connections',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 50.0,
              width: 80.0,
              child: Text(
                '300  Endorsenments',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 50.0,
              width: 80.0,
              child: Text(
                '20 Recommends',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 50.0,
              width: 80.0,
              child: Text(
                '15 Posts',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        )),
  ));
}
