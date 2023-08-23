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
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade500,
            title: Text("Pokemon App"),
            leading: Icon(Icons.arrow_circle_right_rounded, size: 20, color: Colors.grey.shade300),
            leadingWidth: 30,
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
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
                     borderRadius: BorderRadius.circular(50),
                     color: Colors.blue.shade500,
                     border: Border.all(
                       color: Colors.white,
                       width: 1,
                     )
                   ),
                   child: Center(
                     child: Text(
                       "Enter",
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
    ));
  }
}
