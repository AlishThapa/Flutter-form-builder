import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../form_builder_practise/form_builder_page.dart';

class TypesInFlutterBuilderTextField extends StatelessWidget {
  const TypesInFlutterBuilderTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Form Builder'),
          actions: [
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              ),
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: FormBuilder(
              child: Column(
                children: [
                  FormBuilderCheckbox(
                    name: 'Checkbox',
                    initialValue: false,
                    title: const Text('IsChecked?'),
                  ),
                  FormBuilderCheckboxGroup(
                    name: 'checkbox2',
                    options: const [
                      FormBuilderFieldOption(
                        //value is what you want the checkbox value to be so that it may be easier when you do complex activities
                        value: 'Alish',
                        child: Text('Alish'),
                      ),
                      FormBuilderFieldOption(
                        //value is what you want the checkbox value to be so that it may be easier when you do complex activities
                        value: 'Thapa',
                        child: Text('Thapa'),
                      ),
                      FormBuilderFieldOption(
                        //value is what you want the checkbox value to be so that it may be easier when you do complex activities
                        value: 'Kishan',
                        child: Text('Kishan'),
                      ),
                      FormBuilderFieldOption(
                        //value is what you want the checkbox value to be so that it may be easier when you do complex activities
                        value: 'Whallah',
                        child: Text('Done?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FormBuilderChoiceChip(
                    selectedColor: Colors.lightGreenAccent,
                    spacing: 10,
                    padding: const EdgeInsets.all(5),
                    name: 'Chip',
                    decoration: const InputDecoration(
                        labelText: 'Choose the following choices?'),
                    options: const [
                      FormBuilderChipOption(
                        value: 'value1',
                        child: Text('first'),
                      ),
                      FormBuilderChipOption(
                        value: 'value2',
                        child: Text('Second'),
                      ),
                      FormBuilderChipOption(
                        value: 'value3',
                        child: Text('Third'),
                      ),
                      FormBuilderChipOption(
                        value: 'value4',
                        child: Text('Fourth'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FormBuilderDateRangePicker(
                    name: 'Date Range Picker',
                    firstDate: DateTime(1990),
                    lastDate: DateTime.now(),
                    decoration: const InputDecoration(
                      labelText: 'Date Range Picker',
                    ),
                  ),
                  const SizedBox(height: 20),
                  FormBuilderDateTimePicker(
                    name: 'Date time picker',
                    helpText: 'Date Time Picker',
                    decoration: const InputDecoration(
                      labelText: 'Date Time Picker',
                    ),
                  ),
                  const SizedBox(height: 20),
                  FormBuilderDropdown(
                    name: 'Drop Down',
                    decoration: const InputDecoration(
                      labelText: 'Names',
                      hintText: 'Choose',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Aarav',
                        child: Text('Aarav'),
                      ),
                      DropdownMenuItem(
                        value: 'Priya',
                        child: Text('Priya'),
                      ),
                      DropdownMenuItem(
                        value: 'Samir',
                        child: Text('Samir'),
                      ),
                      DropdownMenuItem(
                        value: 'Roshan',
                        child: Text('Roshan'),
                      ),
                      DropdownMenuItem(
                        value: 'Tiara',
                        child: Text('Tiara'),
                      ),
                      DropdownMenuItem(
                        value: 'Ishika',
                        child: Text('Ishika'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FormBuilderFilterChip(
                    name: 'Filter Chip',
                    spacing: 10,
                    selectedColor: Colors.teal,
                    decoration: InputDecoration(
                      fillColor: Colors.redAccent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    options: const [
                      FormBuilderChipOption(
                        value: 'value1',
                        avatar: CircleAvatar(
                          child: Icon(Icons.ac_unit),
                        ),
                        child: Text('value1'),
                      ),
                      FormBuilderChipOption(
                          value: 'value2',
                          avatar: CircleAvatar(
                            child: Icon(Icons.access_alarm),
                          ),
                          child: Text('value2')),
                      FormBuilderChipOption(
                          value: 'value3',
                          avatar: CircleAvatar(
                            child: Icon(Icons.add_call),
                          ),
                          child: Text('value3')),
                      FormBuilderChipOption(
                          value: 'value4',
                          avatar: CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          child: Text('value4')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FormBuilderRadioGroup(
                    name: 'Radio Group',
                    activeColor: Colors.red,
                    decoration: InputDecoration(
                      fillColor: Colors.amberAccent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    options: const [
                      FormBuilderFieldOption(
                        value: 'Radio 1',
                        child: Text('Radio 1'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Radio 2',
                        child: Text('Radio 2'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Radio 3',
                        child: Text('Radio 3'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Radio 4',
                        child: Text('Radio 4'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FormBuilderRangeSlider(
                    name: 'Range Slider',
                    min: 0,
                    max: 10,
                    initialValue: const RangeValues(0, 10),
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.deepPurple.shade100,
                  ),
                  const SizedBox(height: 20),
                  FormBuilderSlider(
                    name: 'Slider',
                    initialValue: 0,
                    min: 0,
                    max: 20,
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.deepPurple.shade100,
                  ),
                  const SizedBox(height: 20),
                  FormBuilderSegmentedControl(
                    name: 'Segmented Color',
                    selectedColor: Colors.deepPurple,
                    unselectedColor: Colors.deepPurpleAccent.shade100,
                    decoration: InputDecoration(
                      fillColor: Colors.greenAccent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    borderColor: Colors.black,
                    options: const [
                      FormBuilderFieldOption(
                        value: 'Radio 1',
                        child: Text('Radio 1'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Radio 2',
                        child: Text('Radio 2'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Radio 3',
                        child: Text('Radio 3'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Radio 4',
                        child: Text('Radio 4'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FormBuilderSwitch(
                    name: 'Switch',
                    title: const Text('Switch'),
                    activeColor: Colors.deepPurple,
                    initialValue: false,
                    inactiveThumbColor: Colors.amber,
                    inactiveTrackColor: Colors.amber.shade300,
                    subtitle: const Text('Alish'),
                  ),
                  const SizedBox(height: 20),
                  FormBuilderTextField(
                    name: 'textField',
                    decoration: const InputDecoration(
                      hintText: 'TextField',
                      labelText: 'TextField',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
