import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegularView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 32, right: 8, bottom: 8),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Règles de ce Crackme : \n\nInterdit de décompiler l\'application.\nVous devez récupérer les accès Premium.",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Vous n'êtes plus Premium depuis le 01/01/2021",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                color: Colors.white,
                child: Text(
                  "S'abonner",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                onPressed: () async {
                  await _launchInBrowser("https://paypal.me/fduhen");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
