import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fixed Tabs'),
          automaticallyImplyLeading: false,
          bottomOpacity: 1,
          backgroundColor: Colors.blue,
          // backgroundColor: Color(0xff5808e5),
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('username'),
                    leading: CircleAvatar(
                      foregroundImage: AssetImage('assets/space1.jpeg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: 'DOGS', icon: Icon(Icons.favorite)),
                    Tab(text: 'CATS', icon: Icon(Icons.music_note)),
                    Tab(text: 'BIRDS', icon: Icon(Icons.search)),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('DOGS')),
            Center(child: Text('CATS')),
            Center(child: Text('BIRDS')),
          ],
        ),
      ),
    );
  }
}
