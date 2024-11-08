import 'package:corso_flutter_2024/ui/widgets/form/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _controller = TextEditingController(text: 'Ciao');
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2040),
    );
    if (picked != null) {
      _dateController.text = DateFormat.yMMMMd().format(picked);
    }
  }

  void _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dialOnly,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: true,
          ),
          child: child ?? Container(),
        );
      },
    );
    if (picked != null) {
      _timeController.text = '${picked.hour}:${picked.minute}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Label',
              hintText: 'Hint',
              counterText: 'Conter',
              helperText: 'Helper',
              icon: Icon(Icons.send),
              prefixIcon: Icon(Icons.star),
              suffixIcon: Icon(Icons.person),
              border: UnderlineInputBorder(),
            ),
          ),
          SizedBox(height: 24),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Label',
              hintText: 'Hint',
              counterText: 'Conter',
              helperText: 'Helper',
              icon: Icon(Icons.send),
              prefixIcon: Icon(Icons.star),
              suffixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
              fillColor: Colors.amber,
              filled: true,
            ),
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: AbsorbPointer(
              child: TextField(
                controller: _dateController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Date',
                  hintText: 'Select date',
                  suffixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () => _selectTime(context),
            child: AbsorbPointer(
              child: TextField(
                controller: _timeController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Time',
                  hintText: 'Select time',
                  suffixIcon: Icon(Icons.access_time),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          FormWidget()
        ]),
      ),
    );
  }
}
