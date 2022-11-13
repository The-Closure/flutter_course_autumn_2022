import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                  Text('Name'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.people),
                            const Text('Add Friends'),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.menu))
                          ],
                        ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 10),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('This Test app'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.archive),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person_add_alt),
      ),
      body: ListView(
        // scrollDirection: Axis.vertical,
        // physics: BouncingScrollPhysics(), //bouncing
        // reverse: true,
        padding: const EdgeInsets.all(8),
        children: [
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const FlutterLogo(
                size: 70,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Name'),
                  const Text('Message'),
                ],
              ),
            ],
          ),
        ],
      ),
      // ListView.separated(
      //   itemBuilder: (context, index) => Row(
      //     children: [
      //       FlutterLogo(size: 70),
      //       Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           const Text('Name'),
      //           const Text('Message'),
      //         ],
      //       ),
      //     ],
      //   ),
      //   separatorBuilder: (context, index) => Divider(),
      //   itemCount: 11,
      // )

      // ListView.builder(
      //   itemBuilder: (_, index) => Text('List View Item $index'),
      // ),
    );
  }
}

// Widget drawerChiled() {
//   return SafeArea(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: const [
//             CircleAvatar(
//               backgroundColor: Colors.transparent,
//               child: FlutterLogo(
//                 size: 50,
//               ),
//             ),
//             Text('Name'),
//           ],
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Expanded(
//           child: ListView.separated(
//               itemBuilder: (context, index) => Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       const Icon(Icons.people),
//                       const Text('Add Friends'),
//                       IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
//                     ],
//                   ),
//               separatorBuilder: (context, index) => const Divider(),
//               itemCount: 10),
//         )
//       ],
//     ),
//   );
// }
