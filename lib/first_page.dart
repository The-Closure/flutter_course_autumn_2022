import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomDateTimePicker(),
              CustomRadioList()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadioList extends StatefulWidget {
  CustomRadioList({Key? key}) : super(key: key);

  @override
  State<CustomRadioList> createState() => _CustomRadioListState();
}

class _CustomRadioListState extends State<CustomRadioList> {
  String _groupValue = 'tea';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio(
            value: 'tea',
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value ?? '';
              });
            },
          ),
          title: Text('tea'),
        ),
        ListTile(
          leading: Radio(
            value: 'coffee',
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value ?? '';
              });
            },
          ),
          title: Text('coffee'),
        ),
        ListTile(
          leading: Radio(
            value: 'aya_shee',
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value ?? '';
              });
            },
          ),
          title: Text('aya shee'),
        ),
      ],
    );
  }
}

class CustomDateTimePicker extends StatefulWidget {
  CustomDateTimePicker({
    super.key,
  });

  @override
  State<CustomDateTimePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDateTimePicker> {
  String pickedDateStr = ' - - ';
  String pickedTimeStr = ' : ';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: IconButton(
            color: Colors.blue,
            iconSize: 40,
            icon: Icon(Icons.date_range),
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), //get today's date
                  firstDate: DateTime(
                      2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));
              setState(() {
                pickedDateStr =
                    '${pickedDate?.year ?? ' '}-${pickedDate?.month ?? ' '}-${pickedDate?.day ?? ' '}';
              });
              TimeOfDay? time = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());
              setState(() {
                pickedTimeStr = '${time?.hour ?? ' '}:${time?.minute ?? ' '}';
              });
            },
          ),
          title: Text('$pickedDateStr'),
        ),
        ListTile(
          title: Text('$pickedTimeStr'),
          leading: IconButton(
            icon: Icon(
              Icons.watch_later,
              color: Colors.blue,
            ),
            iconSize: 40,
            onPressed: () async {
              TimeOfDay? time = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());
              setState(() {
                pickedTimeStr = '${time?.hour ?? ' '}:${time?.minute ?? ' '}';
              });
            },
          ),
        ),
      ],
    );
  }
}
