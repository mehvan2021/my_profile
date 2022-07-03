import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 75,
          ),
          Container(
            height: 75,
            child: Text(
              'MESSAGES',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(179, 0, 0, 0),
                  fontSize: 24.0),
            ),
          ),
          Container(
            height: 390,
            width: 360,
            child: Column(
              children: [
                //container 1
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 246, 246),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 86, 219, 4),
                          spreadRadius: 2),
                    ],
                  ),
                  width: 360,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Avenir',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 75,
                        width: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                //container 2
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 246, 246),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 86, 219, 4),
                          spreadRadius: 2),
                    ],
                  ),
                  width: 360,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 75,
                        width: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                //container 3
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 246, 246),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 86, 219, 4),
                          spreadRadius: 2),
                    ],
                  ),
                  width: 360,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Avenir',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 75,
                        width: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            color: Color.fromARGB(255, 230, 230, 230),
            height: 5,
            width: 500,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 230,
            width: 360,
            child: Column(
              children: [
                //container 1
                Container(
                  width: 360,
                  height: 40,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'SEND ME A MESSAGE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(179, 0, 0, 0),
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                //container 2
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 246, 246),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 224, 225, 223),
                          spreadRadius: 2),
                    ],
                  ),
                  width: 360,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'MESSAGE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                //container 3
                Container(
                  width: 360,
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 246, 246, 246),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 224, 225, 223),
                                spreadRadius: 2),
                          ],
                        ),
                        width: 310,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(right: 0.0, left: 12.0),
                          child: Icon(
                            color: Color.fromARGB(255, 4, 216, 78),
                            size: 35,
                            Icons.send,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
