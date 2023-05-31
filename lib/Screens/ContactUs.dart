import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  ContactUs createState() => ContactUs();
}

class ContactUs extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _problem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Problem'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the problem details';
                  }
                  return null;
                },
                onSaved: (value) {
                  _problem = value ?? '';
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // You can now use the captured values (_name, _email, _problem)
                    // for further processing, such as sending them to an API
                    // or performing any desired actions.
                    // Example: createNewRequest(_name, _email, _problem);
                    print('Name: $_name');
                    print('Email: $_email');
                    print('Problem: $_problem');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
