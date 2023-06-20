import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'books.dart';

class Bookpreviewwidget extends StatefulWidget {
  static var bookdescrip = "This book is for 10th class, It contains the topics such as Flutter and its topics like how to use etc , This book is for 10th class, It contains the topics such as Flutter and its topics like how to use etc , This book is for 10th class, It contains the topics such as Flutter and its topics like how to use etc";
  static var bookimg = 'https://docs.flutter.dev/assets/images/docs/cover/practical-flutter.jpg';
  static var bookname = 'Practical Flutter';
  static var isbnno = "AB3468957gdjwahe";
  Map data = {};
  // var newbook =  Book(bookassigned: 'Aditya',  bookimg: bookimg,bookimg2: bookimg, bookname: bookname, isbnno: isbnno , bookdesc: bookdescrip);
  Book newbook;
  Bookpreviewwidget({required this.newbook});
  
  @override
  State<Bookpreviewwidget> createState() => _BookpreviewwidgetState(b : newbook);
}

class _BookpreviewwidgetState extends State<Bookpreviewwidget> {

  // ignore: non_constant_identifier_names
  Book b;
  Map data = {};
  _BookpreviewwidgetState({required this.b});
  // ignore: non_constant_identifier_names
  bool is_requested = false;
  int curitem = 0;
  // String curimg = img1;
  @override

  Widget build(BuildContext context) {

    // data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title : const Text("View")),
      body: SingleChildScrollView(
              child : Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(80.0, 40.0, 80.0, 40.0),
                        child : Image(image: NetworkImage(b.bookimg)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              curitem = 0;
                            });
                          }, 
                          child: Container(
                                margin: const EdgeInsets.only(right: 15.0),
                                alignment: Alignment.topCenter,
                                height: 60.0,
                                width: 60.0,
                                child : Image(image: NetworkImage(b.bookimg),)
                              ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              curitem = 1;
                            });
                          }, 
                          child: Container(
                                margin: const EdgeInsets.only(right: 15.0),
                                alignment: Alignment.topCenter,
                                height: 60.0,
                                width: 60.0,
                                child : Image(image: NetworkImage(b.bookimg),)
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
                      child: Text(
                          b.bookname,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: "Ubuntu",
                            
                          ),
                        ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
                      child: Text(
                          b.bookdesc,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold
                            // fontStyle: Thin
                          ),
                        ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
            ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: !is_requested,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 9, 210, 16),
                foregroundColor: const Color.fromARGB(255, 245, 241, 241) 
              ),
              child: const Text(
                "Request Book",
                softWrap: true,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed:  (){
                setState(() {
                  is_requested = true;
                });
              }
            ),
          ),          Visibility(
            visible: is_requested,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 197, 8, 30),
                foregroundColor: const Color.fromARGB(255, 245, 241, 241) 
              ),
              child: const Text(
                "Delete Request",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold
                )
              ),
              onPressed:  (){
                setState(() {
                  is_requested = false;
                });
              }
            ),
          ),
        ],
      ),
    );
  }
}
