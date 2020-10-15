import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/src/screens/search_screen.dart';

import 'home_screen.dart';
import 'library_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool isPlaying = true;
  var _value = 0.0;
  void handlePressed() {
    print('Hello');
    setState(() {
      isPlaying = true;
    });
  }

  Widget songPlaying() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(

            image: AssetImage('assets/this_is_post_malone.jpg'),
          ),
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.transparent,
                title: Text('Playing'),
                centerTitle: true,
                leading: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {
                    setState(() {
                      isPlaying = false;
                    });
                  },
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Go Flex',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Post Malone',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Slider(
                  value: _value,
                  onChanged: (value) {
                    //print(value);
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,

                  // valueColor: AlwaysStoppedAnimation(Color(0xff828A8A)),
                  // backgroundColor: Color(0xff666666),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.favorite_border, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.skip_previous, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Icon(
                          isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_filled,
                          color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          if (isPlaying) {
                            isPlaying = false;
                          } else {
                            isPlaying = true;
                          }
                        });
                      },
                    ),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.skip_next, color: Colors.grey),
                      onPressed: () {}
                    ),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.clear, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Container(
            color: Theme.of(context).accentColor,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Expanded(
                      child: _currentIndex == 0
                          ? HomeTab(
                        onPressed: handlePressed,
                      )
                          : _currentIndex == 1
                          ? SearchTab()
                          : _currentIndex == 2
                          ? LibraryTab():null,
                       //   : PremiumTab(),
                    ),
                    // SizedBox(
                    //   height: 100,
                    //   width: MediaQuery.of(context).size.width,
                    // )
                  ],
                ),
                isPlaying
                    ? Container()
                    : Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 0,

                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
                canvasColor: Theme.of(context).primaryColor,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: TextStyle(
                        color: Color(
                            0xffA7A8AC)))), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
              onTap: _onTabTapped,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_music),
                  title: Text('Library'),
                ),
              ],
            ),
          ),
        ),
        isPlaying ? songPlaying() : Container()
      ],
    );
  }

  void _onTabTapped(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}