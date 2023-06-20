import 'package:flutter/material.dart';

import 'book_preview.dart';

class Book
{
  String bookname;
  String bookimg;
  String bookimg2;
  String bookdesc;
  String bookassigned;
  String isbnno;
  
  Book({required this.bookassigned , required this.bookdesc , required this.bookimg , required this.bookimg2, required this.bookname , required this.isbnno});
}

class Bookwidget extends StatelessWidget {
   
  Book book;
  Bookwidget({required this.book});
  // Book({this.bookname , this.bookdesc , this.bookimg});
  @override
  Widget build(BuildContext context) {
    // const cur_width = 50.0;
    return GestureDetector(
            onTap:(){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Bookpreviewwidget(newbook: book,))
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children : [
                Expanded(
                  flex : 2,
                  child: Card(
                    margin: EdgeInsets.all(18.0),
                    color: const Color.fromARGB(77, 104, 103, 103),
                    child :Image(image: NetworkImage(book.bookimg)),
                  )
                ),
                Expanded(
                  flex : 2,
                  child :Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                          const SizedBox(
                            height: 45.0,
                          ),
                          Text(
                          book.bookname,
                          style: const TextStyle(
                            fontFamily: "Ubuntu",
                            fontSize: 18.0
                          ),
                          textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                         Text(
                            book.bookdesc,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                        ]
                    )
                  )
                // Expanded(
                //   flex : 2,
                //   child : Text(
                //     book.bookname,
                //     style: const TextStyle(
                //       fontFamily: "Ubuntu",
                //       fontSize: 18.0
                //     ),
                //     textAlign: TextAlign.center,
                //   )
                // )
              ]
            ),
          );
  }
}