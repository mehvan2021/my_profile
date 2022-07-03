import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
