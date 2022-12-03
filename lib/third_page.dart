import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<bool> checkboxes = [true, true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            for (int i = 0; i < checkboxes.length; i++)
              CheckboxListTile(
                title: Text('data'),
                onChanged: (value) {
                  print(value);
                  setState(() {
                    checkboxes[i] = value!;
                  });
                },
                value: checkboxes[i],
              ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: true,
                    barrierColor: Colors.white70,
                    context: context,
                    builder: (ctxt) {
                      return AlertDialog(
                        actions: [
                          TextButton(onPressed: () {}, child: Text('data'))
                        ],
                        content: Container(
                          child: Center(
                            child: Text(
                              'Choice 4',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('please press me'))
          ],
        ),
      ),
    );
  }
}
