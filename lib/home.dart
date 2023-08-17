import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home(this.goToQuizScreen, {super.key});

  void Function() goToQuizScreen;

 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/1.png",
            color: const Color.fromARGB(132, 255, 255, 255),
            width: 350,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Benvenuto nel mio Quiz!",
            style: TextStyle(
                color: Color.fromARGB(135, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.start,
              size: 24,
            ),
            onPressed: goToQuizScreen,
            style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size.fromWidth(200)),
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(126, 166, 64, 0))),
            label: Text(
              "Inizia Quiz",
              style: GoogleFonts.acme(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
