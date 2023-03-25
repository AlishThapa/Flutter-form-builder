import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../types/types_in_formfield.dart';
import '../widgets/buttons/save_and_read_buttons.dart';
import '../widgets/buttons/reset_buttons.dart';
import '../widgets/buttons/submit_buttons.dart';
import '../widgets/custom_text_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final _formKey = GlobalKey<FormBuilderState>();

class _MyHomePageState extends State<MyHomePage> {
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
                builder: (context) => const TypesInFlutterBuilderTextField(),
              ),
            ),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: FormBuilder(
            key: _formKey,
            skipDisabled: true,
            //skipDisabled: true means form behaves as 2nd field doesn't exist
            onChanged: () {
              if (kDebugMode) {
                print('changed');
              }
            },
            autovalidateMode: AutovalidateMode.always,
            //initialValue takes a Map<String, dynamic>
            initialValue: const {
              'name': 'initial value',
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFormBuilderTextField(
                    name: 'Name',
                    hintText: 'Name',
                    validator: FormBuilderValidators.equal(context,
                        errorText: 'alish')),
                const SizedBox(height: 10),
                const CustomFormBuilderTextField(
                  name: 'Email',
                  hintText: 'Email',
                ),
                const SizedBox(height: 10),
                SubmitButton(
                  onPressed: () {
                    _formKey.currentState?.saveAndValidate();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Submitted',
                        ),
                      ),
                    );
                  },
                ),
                ResetButton(
                  onPressed: () {
                    //to reset the form
                    _formKey.currentState?.reset();
                    //to reset the form we can also do this
                    FocusScope.of(context).unfocus();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Form Reset',
                        ),
                      ),
                    );
                  },
                ),
                SaveData(
                  onPressed: () {
                    _formKey.currentState?.save();

                    FocusScope.of(context).unfocus();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Form Saved',
                        ),
                      ),
                    );
                  },
                ),
                ReadData(
                  onPressed: () {
                    final formData = _formKey.currentState?.value;

                    FocusScope.of(context).unfocus();
                    //showing SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '$formData',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}