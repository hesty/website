import 'package:flutter/material.dart';
import 'package:my_portfolio/custom_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 0.0),
          colors: [const Color(0xff183940), const Color(0xff1B2B41)],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: _buildBody(context),
          ),
        ));
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        _buildAvatar(),
        SizedBox(
          height: 25,
        ),
        _buildTitle(),
        SizedBox(
          height: 20,
        ),
        _buildSubtitle(),
        SizedBox(
          height: 20,
        ),
        _buildContactRow(),
        //_buildCreatedTag()
      ],
    );
  }

  Widget _buildContactRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff0474B3))),
          child: Row(
            children: [Icon(CustomIcons.linkedin_squared), Text('LinkedIn')],
          ),
          onPressed: () {
            launch("https://www.linkedin.com/in/chtkb/");
          },
        ),
        normalVerticalSpace,
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff252A2E))),
          child: Row(
            children: [Icon(CustomIcons.github_circled), Text('GitHub')],
          ),
          onPressed: () {
            launch("https://github.com/hesty");
          },
        ),
        normalVerticalSpace,
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff1EA1F1))),
          child: Row(
            children: [Icon(CustomIcons.twitter_squared), Text('Twitter')],
          ),
          onPressed: () {
            launch("https://twitter.com/KarabogaCihat");
          },
        ),
      ],
    );
  }

  Widget get normalVerticalSpace => SizedBox(
        width: MediaQuery.of(context).size.width * .02,
      );

  Widget _buildAvatar() {
    return Container(
        width: 250,
        height: 250,
        child: CircleAvatar(
            radius: 30, backgroundImage: AssetImage('avatar.png')));
  }

  Widget _buildTitle() {
    return Text(
      "Cihat Karaboğa",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      "Softare Enginner Students. Flutter Developer.\nPart time Musician.",
      style: TextStyle(
        color: Colors.white70,
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    );
  }

  // Widget _buildCreatedTag() {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.end,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Icon(
  //         Icons.copyright,
  //         color: Colors.greenAccent,
  //       ),
  //       SizedBox(
  //         width: 10,
  //       ),
  //       Text(
  //         "Created By Hesty with Flutter",
  //         style: TextStyle(color: Colors.greenAccent),
  //       ),
  //     ],
  //   );
  // }

}
