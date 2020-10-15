import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildProfileTile(
        String name, Function tapHandler, BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(left: 2, right: 2),
        child: InkWell(
          splashColor: Color.fromRGBO(40, 40, 40, 1,),
          highlightColor: Color.fromRGBO(40, 40, 40, 1),
          onTap: tapHandler,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40,
              child: Image.asset(
                'assets/images/profile.png',
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
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  'View Profile',
                  style: GoogleFonts.raleway(fontSize: 18, color: Colors.grey),
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    @override
    void dispose() {
      super.dispose();
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
              style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 40, 40, 1),
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.white),
        leading: IconButton(
          splashColor: Theme.of(context).shadowColor,
          highlightColor: Theme.of(context).shadowColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        color: Color(0xff121212),
        child: ListView(
          children: [
            SizedBox(height: 20),
            buildProfileTile('Afrobeezy', () {}, context),
            SizedBox(height: 40),
            buildListTile('Data Saver', () {}, context),
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
      ),
    );
  }
}
