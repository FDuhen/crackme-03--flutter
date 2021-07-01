import 'package:flutter/material.dart';

class PremiumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.amber,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          "Good job ! \n\nLa leçon à retenir de ce CrackMe : \nPar défaut, les méthodes mises à votre disposition "
          "pour récupérer une Date sont basées sur la date du téléphone.\nCette date peut donc très facilement "
          "etre manipulée par l'utilisateur.\nSi vous devez quand même utiliser une vérification de date sur votre "
          "front mobile, et ce pour une fonction critique de l'appli, préferez utiliser le Network Time Protocol (NTP) ",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
