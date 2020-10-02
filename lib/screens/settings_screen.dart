import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    Widget buildProfileTile(
        String name, Function tapHandler, BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(left: 2, right: 2),
        child: InkWell(
          splashColor: Colors.black,
          highlightColor: Colors.black,
          onTap: tapHandler,
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              child: Image.asset(
                'assets/images/mnkd.png',
                fit: BoxFit.contain,
              ),
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.raleway(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'View Profile',
                  style: GoogleFonts.raleway(fontSize: 18, color: Colors.grey),
                )
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ),
      );
    }

    Widget buildListTile(
        String name, Function tapHandler, BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: InkWell(
          splashColor: Colors.black,
          highlightColor: Colors.black,
          onTap: tapHandler,
          child: ListTile(
            title: Text(
              name,
              style: GoogleFonts.raleway(fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).shadowColor,
        centerTitle: true,
        leading: IconButton(
          splashColor: Theme.of(context).shadowColor,
          highlightColor: Theme.of(context).shadowColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Settings',
          style: GoogleFonts.raleway(fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50),
          buildProfileTile('Afrobeezy', () {}, context),
          SizedBox(height: 60),
          buildListTile('Account', () {}, context),
          buildListTile('Playback', () {}, context),
          buildListTile('Explicit Content', () {}, context),
          buildListTile('Car', () {}, context),
          buildListTile('Social', () {}, context),
          buildListTile('Connected to Apps', () {}, context),
          buildListTile('Music Quality', () {}, context),
          buildListTile('Storage', () {}, context),
          buildListTile('Notifications', () {}, context),
        ],
      ),
    );
  }
}
