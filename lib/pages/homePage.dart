import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idenfit_my_first_app/constants/HomePageTheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageTheme homePageTheme = HomePageTheme();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.red.shade600
        ),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 20,
                runSpacing: 10,
                children: [
                    InkWell(
                    onTap: () {
                      setState(() {
                        count_whatsapp++;
                      });
                    },
                    child: homePageTheme.box(name_whatsapp, whatsapp_icon_link, count_whatsapp),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_slack++;
                      });
                    },
                    child: homePageTheme.box(name_slack, slack_icon_link, count_slack),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_linkedin++;
                      });
                    },
                    child: homePageTheme.box(name_linkedin, linkedin_icon_link, count_linkedin),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_gmail++;
                      });
                    },
                    child: homePageTheme.box(name_gmail, gmail_icon_link, count_gmail),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_zoom++;
                      });
                    },
                    child: homePageTheme.box(name_zoom, zoom_icon_link, count_zoom),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_twitter++;
                      });
                    },
                    child: homePageTheme.box(name_twitter, twitter_icon_link, count_twitter),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_instagram++;
                      });
                    },
                    child: homePageTheme.box(name_instagram, instagram_icon_link, count_instagram),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_facebook++;
                      });
                    },
                    child: homePageTheme.box(name_facebook, facebook_icon_link, count_facebook),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count_discord++;
                      });
                    },
                    child: homePageTheme.box(name_discord, discord_icon_link, count_discord),
                  ),
                ],
              ),
            ) ,
          )

        )




        /*child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 180,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    ),
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),*/


        )


    ));
  }
}
