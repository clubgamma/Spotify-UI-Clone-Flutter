import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/screens/UserLibrary/user_music_page.dart';
import 'package:spotify_ui_clone/screens/UserLibrary/user_podcast_page.dart';

class UserLibrary extends StatefulWidget {
  @override
  _UserLibraryState createState() => _UserLibraryState();
}

class _UserLibraryState extends State<UserLibrary>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Text('Music'),
              ),
              Tab(
                child: Text('Podcast'),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: [
          UserMusicPage(),
          UserPodastPage(),
        ],
        controller: _tabController,
      ),
    );
  }
}
