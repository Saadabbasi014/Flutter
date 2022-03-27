import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/ms.jpg'),
              ),
              SizedBox(height: 40),
              Text(
                'MS ABBASI',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  // backgroundColor: Colors.grey,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Software Engineer at HaithmSoft',
                style: TextStyle(
                    color: Colors.red,
                    //  backgroundColor: Colors.grey,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'App Developer at ISDP',
                style: TextStyle(
                    color: Colors.red,
                    // backgroundColor: Colors.grey,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: (null),
                child: Text(
                  'Conect',
                  style: TextStyle(
                    fontSize: 35,
                    // color: Colors.blueGrey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '4 Shared Connections',
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage(
                        'images/ms.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/ms.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/ms.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/ms.jpg'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
