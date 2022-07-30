import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/Home/Message_File.dart';

_openLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _openWhatsAppCaht() async {
  String PhoneNumber = '009647507514274';
  var url = 'https:/wa.me/$PhoneNumber?text=Hellooo';
// ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    print('error');
    throw 'Error Occured';
  }
}

_launchSMS(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Container(
                width: 150,
                height: 150,
                child: Image.network(
                    'https://www.pngall.com/wp-content/uploads/5/Profile-Male-PNG.png'),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                width: 250,
                height: 50,
                child: Center(
                  child: Text(
                    'MEHVAN JEMAL',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(179, 0, 0, 0),
                        fontSize: 24.0),
                  ),
                ),
              ),
              Container(
                width: 240,
                alignment: Alignment.topCenter,
                height: 100,
                child: Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        color: Color.fromARGB(179, 0, 0, 0),
                        fontSize: 15.0),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Expanded(
                child: Column(
                  children: [
                    // container 1 Linkedin
                    Container(
                      child: Container(
                        height: 44,
                        color: Color.fromARGB(255, 238, 240, 251),
                        child: Row(
                          children: [
                            Container(
                              width: 75,
                              child: Icon(
                                FontAwesomeIcons.linkedinIn,
                                size: 33,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _openLink(
                                    'https:/www.linkedin.com/authwall?trk=gf&trkInfo=AQGiAY-5FQO0TQAAAYG_hGHIsOHquA0qi9qQfb_ap8L0VJvSw4gv574iRoMKGihlgdYC6RUROwc5e5Du2KL4O-cBZX3iHgvn_ZGDf6XJsGNVg4qlYz93oYJ69XS8MR0EB0YMXtY=&original_referer=https://mehvan.site/&sessionRedirect=https%3A%2F%2Fiq.linkedin.com%2Fin%2Fmehvanjemal');
                              },
                              child: Container(
                                width: 175,
                                child: Center(
                                  child: Text(
                                    'Linkedin Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Avenir',
                                        color: Color.fromARGB(179, 0, 0, 0),
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 238, 240, 251),
                              spreadRadius: 5),
                        ],
                      ),
                      width: 300,
                      height: 44,
                    ),
                    // container 1 Linkedin End ------                    // container 1 Linkedin End ------
                    SizedBox(
                      height: 20,
                    ),
                    // container 2
                    Container(
                      child: Container(
                        height: 44,
                        color: Color.fromARGB(255, 187, 214, 248),
                        child: Row(
                          children: [
                            Container(
                              width: 75,
                              child: Icon(
                                FontAwesomeIcons.facebookF,
                                size: 33,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _openLink(
                                    'https:/m.facebook.com/mehvan.duski.10');
                              },
                              child: Container(
                                width: 175,
                                child: Center(
                                  child: Text(
                                    'Facebook Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Avenir',
                                        color: Color.fromARGB(179, 0, 0, 0),
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 214, 248),
                              spreadRadius: 5),
                        ],
                      ),
                      width: 300,
                      height: 44,
                    ),
                    // container 2 End

                    SizedBox(
                      height: 20,
                    ),

                    // container 3
                    Container(
                      child: Container(
                        height: 44,
                        color: Color.fromARGB(255, 243, 230, 230),
                        child: Row(
                          children: [
                            Container(
                              width: 75,
                              child: Icon(
                                FontAwesomeIcons.instagram,
                                size: 33,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _openLink(
                                    'https:/www.instagram.com/mehvanjemal/');
                              },
                              child: Container(
                                width: 175,
                                child: Center(
                                  child: Text(
                                    'Instagram Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Avenir',
                                        color: Color.fromARGB(179, 0, 0, 0),
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 243, 230, 230),
                              spreadRadius: 5),
                        ],
                      ),
                      width: 300,
                      height: 44,
                    ),
                    // container 3 End
                    SizedBox(
                      height: 20,
                    ),
                    // container 4
                    Container(
                      child: Container(
                        height: 44,
                        color: Color.fromARGB(255, 253, 249, 243),
                        child: Row(
                          children: [
                            Container(
                              width: 75,
                              child: Icon(
                                FontAwesomeIcons.globe,
                                size: 33,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _openLink('https:/www.mehvan.site');
                              },
                              child: Container(
                                width: 175,
                                child: Center(
                                  child: Text(
                                    'My Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Avenir',
                                        color: Color.fromARGB(179, 0, 0, 0),
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 253, 249, 243),
                            spreadRadius: 5, //spread radius
                          ),
                        ],
                      ),
                      width: 300,
                      height: 44,
                    ),
                    // container 4 End
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // container Banner
              Container(
                width: 300,
                height: 55,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        _openWhatsAppCaht();
                      },
                      child: Container(
                          width: 100,
                          height: 55,
                          child: Icon(
                            color: Color.fromARGB(255, 64, 205, 83),
                            size: 35,
                            FontAwesomeIcons.whatsapp,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 205, 243, 207),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        _launchEmail(
                            'mailto:Mehvanmahmood@gmail.com?subject=Hello Mehvan&body=New%20plugin');
                      },
                      child: Container(
                          width: 100,
                          height: 55,
                          child: Icon(
                            color: Color.fromARGB(255, 204, 206, 203),
                            size: 35,
                            Icons.mail_outlined,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 234, 245, 235),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MessageView(),
                          ),
                        );
                      },
                      child: Container(
                          width: 100,
                          height: 55,
                          child: Icon(
                            color: Color.fromARGB(255, 35, 224, 193),
                            size: 35,
                            Icons.chat_outlined,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 249, 239, 229),
                          )),
                    ),
                  ],
                ),
              ),
              // container Banner End ------
            ],
          ),
        ),
      ),
    );
  }
}
