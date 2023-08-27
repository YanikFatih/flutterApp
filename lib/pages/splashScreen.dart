import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idenfit_my_first_app/pages/homePage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text(
                "Pokemon App",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            leadingWidth: 30,

          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
            ),
            child:Column(
               children: [
               InkWell(
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                 child: Container(
                   margin: EdgeInsets.only(top: 250),
                   width: MediaQuery.of(context).size.width / 2,
                   height: 60,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Theme.of(context).colorScheme.primary,
                   ),
                   child: Center(
                     child: Text(
                       "Go Pokemons",
                       style: GoogleFonts.quicksand(
                         color: Colors.white,
                         fontSize: 25,
                         fontWeight: FontWeight.w700
                       )
                     ),
                   ),
                 ),
               ),
               ],
            )
          ),
    );
  }
}
