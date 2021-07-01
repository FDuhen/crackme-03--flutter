import 'package:crackme03/premium_view.dart';
import 'package:flutter/material.dart';
import 'package:crackme03/regular_view.dart';

class HomePage extends StatelessWidget {

  bool _isExpired () {
    var today = DateTime.now();

    return today.isAfter(DateTime(2021));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crackme 03 - Le choix dans la date"),
      ),
      floatingActionButton: InkWell(
        onLongPress: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  "La plupart des méthodes qui existent pour récupérer une date se basent sur la date du téléphone."),
            ),
          );
        },
        child: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    "Appuyez longtemps sur ce bouton pour avoir un indice"),
              ),
            );
          },
          child: const Icon(Icons.live_help),
          backgroundColor: Colors.amber,
        ),
      ),
      body: _isExpired() ? RegularView() : PremiumView(),
    );
  }
}
