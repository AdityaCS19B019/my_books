// import 'dart:html';

// import 'dart:js';

// import 'dart:js';

import 'package:flutter/material.dart';
import 'books.dart';
import 'book_preview.dart';

void main() {
  var bookdescrip = "This book is for 10th class, It contains the topics such as Flutter and its topics like how to use etc , This book is for 10th class, It contains the topics such as Flutter and its topics like how to use etc , This book is for 10th class, It contains the topics such as Flutter and its topics like how to use etc";
  var bookimg = 'https://docs.flutter.dev/assets/images/docs/cover/practical-flutter.jpg';
  var bookname = 'Practical Flutter';
  var isbnno = "AB3468957gdjwahe";
  List<Book> books = [
    Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip),
    Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip),
    Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip),
    Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip),
    Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip),
  ];

  var newbook =  Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip);

  List<String> images = [
    bookimg,
    bookimg,
    bookimg,
    bookimg,
    bookimg,
    bookimg,
    bookimg,
    bookimg,
    bookimg,
  ];
  runApp(MaterialApp(
    // home: Scaffold(
    //   appBar: AppBar(title: const Text("My Books"),),
    //   body: CustomScrollView(
    //     slivers: [
    //       SliverPadding(
    //         padding: const EdgeInsets.all(20.0),
    //         sliver: SliverGrid.count(
    //           crossAxisCount: 1,
              
    //           mainAxisSpacing: 0,
    //           crossAxisSpacing: 0,
    //           // children: books.map((book) => Bookwidget(book: book)).toList(),
    //           children: books.map((b) => Bookwidget(book: b)).toList()
    //         )
    //       )
    //     ]
    //   )
    // ),
    home : Scaffold(
      appBar: AppBar(title: Text("Books"),),
      body: SingleChildScrollView(
        child: Column(
          children: books.map((b) => Bookwidget(book: b)).toList()
        )
      )
    )
    // home: Bookwidget(book: newbook,),
    // routes: {"/book" : (context) => Bookpreviewwidget()},
    // home : Bookpreviewwidget(),
  ));
}


class Profile extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: const Color.fromARGB(255, 96, 2, 12),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQGIXan0pXI-CA/profile-displayphoto-shrink_800_800/0/1664975721497?e=2147483647&v=beta&t=-MW42zG3v97IJ9CB5Vg4LmvPocT8I7uGjb615TF3k2s'),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 50.0,
          ),
          Text(
            'Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "Aditya",
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 24.0,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.email_outlined ,),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                "immaneniaditya@gmail.com",
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 22.0,
                ),
              ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'BOOKS TAKEN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "5",
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 24.0,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'BOOKS REQUESTED',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "2",
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 24.0,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'BOOKS RETURNED',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "1",
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 24.0,
              fontWeight: FontWeight.w700
            ),
          ),
        ],
       ),
      )
    );
  }
}

