import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

/**
   * 
   *  [filterChip accepts multi choices] coding feature
   * [choiceChip accepts single choice] coding feature
   * 
   */

class _SecondPageState extends State<SecondPage> {
  double _slider = 10;
  List<String> chips = List.empty(growable: true);
  List<bool> choices = [false, false, false, false];
  TextEditingController chipInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('chips'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: chipInput,
                  ),
                ),
                Container(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      String chipValue = chipInput.text;
                      chipInput.clear();
                      setState(() {
                        chips.add(chipValue);
                      });
                    },
                    child: Text('add'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
              itemCount: chips.length,
              itemBuilder: (context, index) => InputChip(
                selectedColor: Colors.green,
                label: Text(
                  chips[index],
                ),
                // onSelected: (bool value) {

                // },
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                ChoiceChip(
                  label: Text('Choice 1'),
                  selected: choices[0],
                  onSelected: (value) {
                    choices.fillRange(0, choices.length, false);

                    setState(() {
                      choices[0] = value;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Choice 2'),
                  selected: choices[1],
                  onSelected: (value) {
                    choices.fillRange(0, choices.length, false);

                    setState(() {
                      choices[1] = value;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Choice 3'),
                  selected: choices[2],
                  onSelected: (value) {
                    choices.fillRange(0, choices.length, false);

                    setState(() {
                      choices[2] = value;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Choice 4'),
                  selected: choices[3],
                  onSelected: (value) {
                    choices.fillRange(0, choices.length, true);

                    setState(() {
                      choices[3] = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Slider(
              value: _slider,
              min: 0,
              max: 100,
              label: _slider.round().toString(),
              divisions: 100,
              onChanged: (value) {
                if (value == 50) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      action: SnackBarAction(
                        label: 'hide',
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                      content: Text(
                        'half slider',
                      ),
                      duration: Duration(seconds: 3),
                    ),
                  );
                }
                setState(() {
                  _slider = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
