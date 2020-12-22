import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: [const Color(0xff183940), const Color(0xff1B2B41)],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff183940),
                  backgroundImage: NetworkImage(
                      "https://scontent.fada1-8.fna.fbcdn.net/v/t1.0-9/71074570_2395748953793582_5236197842636242944_o.jpg?_nc_cat=109&ccb=2&_nc_sid=09cbfe&_nc_ohc=_uXjFBSsZB4AX8zgT9q&_nc_ht=scontent.fada1-8.fna&oh=d1d02862cbc6ff31549b7b9ebc2d547f&oe=600610B7"),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Cihat Karaboğa",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Softare Enginner Students. Flutter Developer.\nPart time Musician.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset("icons8_github_32px.png"),
                    onPressed: () {
                      launch("https://github.com/Hestys");
                    },
                  ),
                  IconButton(
                    icon: Image.asset("icons8_linkedin_32px.png"),
                    onPressed: () {
                      launch("https://www.linkedin.com/in/chtkb/");
                    },
                  ),
                  IconButton(
                    icon: Image.asset("icons8_twitter_48px.png"),
                    onPressed: () {
                      launch("https://twitter.com/KarabogaCihat");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Created By Hesty with Flutter",
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
