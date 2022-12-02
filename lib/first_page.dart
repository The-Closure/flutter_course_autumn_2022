import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  int currentIndex = 1;
  var itemsValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          PopupMenuButton(
            enabled: true,
            constraints: BoxConstraints(),
            onSelected: (value) => print(value),
            icon: Icon(Icons.arrow_back),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                //  onTap:()=>  ,
                enabled: true,
                child: ListTile(
                  leading: Icon(Icons.add),
                  title: Text(
                    'Item 1',
                  ),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.anchor),
                  title: Text('Item 2'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Item 3'),
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(child: Text('Item A')),
              const PopupMenuItem(
                value: "Item B",
                child: Text('Item B'),
                // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),)),
              ),
            ],
          ),
          // MyDropDownButton(),

          Drop(),

          // ElevatedButton.icon(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     // textStyle:,
          //     backgroundColor: Colors.black,
          //     elevation: 6,
          //     foregroundColor: Colors.blue,
          //     alignment: Alignment.centerRight,
          //   ),
          //   icon: Icon(Icons.add),
          //   label: Text('Press me Please'),
          // ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // textStyle:,
                  backgroundColor: Colors.purple,
                  elevation: 6,
                  foregroundColor: Colors.white,
                  fixedSize:
                      Size.fromWidth(MediaQuery.of(context).size.width * 0.5),
                ),
                child: Text('please Press me'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                ),
                child: Text('Dismissible'),
                style: TextButton.styleFrom(
                    fixedSize: Size.fromWidth(
                        MediaQuery.of(context).size.width * 0.5)),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: currentIndex,
      //   onTap: (value) {
      //     // Respond to item press.
      //     setState(() => currentIndex = value);
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: 'Favorites',
      //       icon: Icon(Icons.favorite),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Music',
      //       icon: Icon(Icons.music_note),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Places',
      //       icon: Icon(Icons.location_on),
      //     ),
      //   ],
      // ),
    );
  }
}

class Drop extends StatefulWidget {
  const Drop({
    Key? key,
  }) : super(key: key);

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  var itemsValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // dropdownColor: Colors.amber,
      value: itemsValue,
      items: const <DropdownMenuItem>[
        DropdownMenuItem(
          value: 'Option 1',
          child: Text('Option 1'),
        ),
        DropdownMenuItem(
          value: 'Option 2',
          child: Text('Option 2'),
        ),
        DropdownMenuItem(
          value: 'Option 3',
          child: Text('Option 3'),
        ),
        DropdownMenuItem(
          value: 'Option 4',
          child: Text('Option 4'),
        ),
        DropdownMenuItem(
          value: 'Option 5',
          child: Text('Option 5'),
        ),
        DropdownMenuItem(
          value: 'Option 6',
          child: Text('Option 6'),
        ),
      ],
      onChanged: (value) {
        setState(() {
          itemsValue = value;
        });
      },
    );
  }
}

// class MyDropDownButton extends StatefulWidget {
//   MyDropDownButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<MyDropDownButton> createState() => _MyDropDownButtonState();
// }

