import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.yellow.shade400,
                color: Colors.grey,
                // value: 0.2,
                strokeWidth: 2,
              ),
            ),
            ListTile(
              isThreeLine: true,
              iconColor: Colors.blue,
              textColor: Colors.black,
              leading: GestureDetector(
                child: CircleAvatar(child: Icon(Icons.person)),
                onTap: () {
                  // Navigator.of(context).pop();
                  print('image clicked');
                },
              ),
              title: Row(
                children: [
                  Text('person Account'),
                  Spacer(),
                  Text('17:50'),
                ],
              ),
              // dense: true,
              subtitle: Text('hello bro pls call me back ASAP'),
              // style: ListTileStyle.drawer,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Text label'),
                    duration: Duration(hours: 1),
                    action: SnackBarAction(
                      label: 'Dissmis',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        // Navigator.of(context).pop();
                      },
                    ),
                  ),
                );
              },
            ),
            ImageViewer()
          ],
        ),
      ),
    );
  }
}

class ImageViewer extends StatefulWidget {
  ImageViewer({
    super.key,
  });
  int index = 1;

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  List<String> paths = [
    'assets/space1.jpeg',
    'assets/space2.jpg',
    'assets/space3.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          paths[widget.index],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              OutlinedButton(
                onPressed: widget.index == 0
                    ? null
                    : () {
                        setState(() {
                          widget.index--;
                        });
                      },
                child: Text(
                  'Previous',
                ),
              ),
              Spacer(),
              OutlinedButton(
                onPressed: widget.index == 2
                    ? null
                    : () {
                        setState(() {
                          widget.index++;
                        });
                      },
                child: Text(
                  'Next',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
