import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // direct constructor , .small , .large , .extended
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('click');
        },
        backgroundColor: Colors.green,
        icon: const Icon(Icons.navigation),
        label: Text('navigation'),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade100,
        title: const Text('AppBar Demo'),
        actions: const <Widget>[
          Icon(Icons.add_alert),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.navigate_next),
          SizedBox(
            width: 8,
          )
        ],
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        // bottom: , for future
      ),
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 12,
              margin: const EdgeInsets.all(8),
              color: Colors.blueGrey.shade100,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/example.gif')),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            margin: EdgeInsets.all(8),
            color: Colors.blueGrey.shade100,
            width: MediaQuery.of(context).size.width,
            child: const Icon(
              Icons.attach_money,
              color: Colors.green,
              size: 45,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            margin: EdgeInsets.all(8),
            color: Colors.blueGrey.shade100,
            width: MediaQuery.of(context).size.width,
            child: Icon(
              Icons.attach_money,
              color: Colors.green,
              size: 45,
            ),
          ),
          Spacer(
            flex: 6,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            margin: EdgeInsets.all(8),
            color: Colors.blueGrey.shade100,
            width: MediaQuery.of(context).size.width,
            child: Icon(
              Icons.attach_money,
              color: Colors.green,
              size: 45,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            margin: EdgeInsets.all(8),
            color: Colors.blueGrey.shade100,
            width: MediaQuery.of(context).size.width,
            child: Icon(
              Icons.attach_money,
              color: Colors.green,
              size: 45,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            margin: EdgeInsets.all(8),
            color: Colors.blueGrey.shade100,
            width: MediaQuery.of(context).size.width,
            child: Icon(
              Icons.attach_money,
              color: Colors.green,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}
