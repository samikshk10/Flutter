import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kitab Kalam",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100.0,
              margin: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'Welcome, Samik',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.library_books,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Book: 450',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'View Profile',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(22),
              child: Center(
                child: Text(
                  "Books",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Color(0xFFEBEBEB),
                    margin: EdgeInsets.only(bottom: 11),
                    child: Row(
                      children: [
                        Icon(
                          Icons.book,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Code History',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Color(0xFFEBEBEB),
                    margin: EdgeInsets.only(bottom: 11),
                    child: Row(
                      children: [
                        Icon(
                          Icons.book,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'PHP Book',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Color(0xFFEBEBEB),
                    margin: EdgeInsets.only(bottom: 11),
                    child: Row(
                      children: [
                        Icon(
                          Icons.book,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Flutter Book',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    color: Color(0xFFEBEBEB),
                    child: Row(
                      children: [
                        Icon(
                          Icons.book,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'How to eat properly',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("pressed!");
          },
          backgroundColor: Colors.purple,
          child: IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              print("Icon pressed!");
            },
          ),
        ),
      ),
    ),
  );
}
