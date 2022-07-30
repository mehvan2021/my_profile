import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessageView extends StatelessWidget {
  MessageView({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _MessageController = TextEditingController();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            child: Text(
              'MESSAGES',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(179, 0, 0, 0),
                  fontSize: 24.0),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: _firebaseFirestore.collection('user').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading...");
                  } else if (snapshot.hasError) {
                    return Text('err ${snapshot.error}');
                  } else if (snapshot.data == null) {
                    return Text('no Data');
                  }
                  snapshot.data!.docs.first;

                  return ListView.separated(
                    itemCount: snapshot.data!.docs.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 246, 246, 246),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 86, 219, 4),
                                spreadRadius: 2),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    snapshot.data!.docs[index]
                                        .data()["name"]
                                        .toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Avenir',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(snapshot.data!.docs[index]
                                      .data()["Message"]
                                      .toString()),
                                  IconButton(
                                      onPressed: () {
                                        _firebaseFirestore
                                            .collection('user')
                                            .where("name",
                                                isEqualTo: snapshot
                                                    .data!.docs[index]
                                                    .data()["name"])
                                            .get()
                                            .then((value) => value
                                                .docs.first.reference
                                                .delete());
                                      },
                                      icon: Icon(Icons.delete))
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );

                  // return Text(snapshot.data!.docs.first
                  //     .data()["first_name"]
                  //     .toString());
                }),
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
                  height: 25,
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
                Form(
                  key: _formKey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 246, 246, 246),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 224, 225, 223),
                            spreadRadius: 2),
                      ],
                    ),
                    width: 330,
                    height: 77,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'required';
                            }
                            return null;
                          },
                          controller: _MessageController,
                          decoration: InputDecoration(
                            //     border: OutlineInputBorder(),
                            hintText: 'Enter a Message',
                          ),
                        )),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  width: 330,
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
                        width: 275,
                        height: 44,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value == '') {
                                  return 'required';
                                }
                                return null;
                              },
                              controller: _nameController,
                              decoration: InputDecoration(
                                //     border: OutlineInputBorder(),
                                hintText: 'Name',
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0.0, left: 12.0),
                        child: InkWell(
                          onTap: () async {
                            if (_formKey.currentState!.validate() == true) {
                              debugPrint('form validated');
                              await addANameToTheDB(
                                      name: _nameController.text,
                                      Message: _MessageController.text)
                                  .then((value) => print(value.path));
                            } else {
                              debugPrint('form not validated');
                            }
                          },
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

  // Future createuser({required String name}) async {
  //   final docUser = firebaseFirestore.instance.collection('user').doc('my-id');

  //   final json = {
  //     'name': name,
  //     'age': 21,
  //     'birthday': DateTime(2001, 7, 28),
  //   };

  //   await docUser.set(json);
  // }

  Future<DocumentReference> addANameToTheDB(
      {required String name, Message}) async {
    DocumentReference _doc = await _firebaseFirestore.collection('user').add({
      "name": "$name",
      "Message": "$Message",
    });
    return _doc;
  }

  // scafold
}
