import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String name_whatsapp = "Whatsapp";
const String name_facebook = "Facebook";
const String name_instagram = "Instagram";
const String name_gmail = "Gmail";
const String name_linkedin = "LinkedIn";
const String name_twitter = "Twitter";
const String name_slack = "Slack";
const String name_zoom = "Zoom";
const String name_discord = "Discord";

int count_whatsapp = 0;
int count_facebook = 0;
int count_instagram = 0;
int count_gmail = 0;
int count_linkedin = 0;
int count_twitter = 0;
int count_slack = 0;
int count_zoom = 0;
int count_discord = 0;

const String whatsapp_icon_link= "https://cdn-icons-png.flaticon.com/512/124/124034.png";
const String facebook_icon_link = "https://w7.pngwing.com/pngs/504/313/png-transparent-facebook-logo-social-media-badge-social-network-influencer-marketing-facebook-icon-blue-trademark-pin.png";
const String instagram_icon_link = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1024px-Instagram_logo_2022.svg.png";
const String gmail_icon_link = "https://seeklogo.com/images/G/gmail-icon-logo-9ADB17D3F3-seeklogo.com.png";
const String linkedin_icon_link = "https://static-00.iconduck.com/assets.00/linkedin-icon-2048x2048-ya5g47j2.png";
const String twitter_icon_link = "https://w7.pngwing.com/pngs/363/420/png-transparent-twitter-flat-social-media-icons-set-round-style-icon.png";
const String slack_icon_link = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Slack_icon_2019.svg/2048px-Slack_icon_2019.svg.png";
const String zoom_icon_link = "https://t3.ftcdn.net/jpg/03/72/44/44/360_F_372444473_E5n3d2lBI40szxpYGKXoDDsR82YZBzCG.jpg";
const String discord_icon_link = "https://cdn-icons-png.flaticon.com/512/4945/4945973.png";

class HomePageTheme {

  box(String name, String imagePath, int count){//parametre olarak renk de alabilir, bakılacak.
    return InkWell(
          child: Container(
                padding: EdgeInsets.all(10),
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),
                child: Column(
                  children: [

                    CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(imagePath),
                        backgroundColor: Colors.transparent
                    ),

                    Container(
                      width: 80,
                      height: 20,
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 20,
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Text(
                        '$count',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],

              ),


        ),
    );
  }
}