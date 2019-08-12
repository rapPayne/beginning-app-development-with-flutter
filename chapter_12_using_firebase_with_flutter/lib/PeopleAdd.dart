import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Person.dart';

class PeopleAdd extends StatefulWidget {
  @override
  _PeopleAddState createState() => _PeopleAddState();
}

class _PeopleAddState extends State<PeopleAdd> {
  final Person _person = Person();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a person'),
      ),
      body: _body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _key.currentState.save();
          // Actually add the person here.
          addPersonToFirestore(_person);
          Navigator.pop(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget get _body {
    return Form(
      key: _key,
      child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              personFormField(labelText: 'First name'),
              personFormField(labelText: 'Last name'),
              personFormField(labelText: 'Email'),
              personFormField(labelText: 'Image URL'),
            ],
          )),
    );
  }

  Widget personFormField({String labelText, String fieldName}) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText),
      onSaved: (String val) {
        //_person[fieldName] = val;
        switch (labelText) {
          case 'First name':
            _person.name['first'] = val;
            break;
          case 'Last name':
            _person.name['last'] = val;
            break;
          case 'Email':
            _person.email = val;
            break;
          case 'Image URL':
            _person.imageUrl = val;
            break;
          default:
            throw "Bad person field name. I don't know $labelText";
        }
      },
    );
  }

  void addPersonToFirestore(Person person) {
    // Add a new document in collection "cities"
    Firestore.instance
        .collection('people')
        .document()
        .setData(<String, dynamic>{
      'name': person.name,
      'email': person.email,
      'imageUrl': person.imageUrl,
    }).then<void>((dynamic doc) {
      print('Document successfully written! $doc');
    }).catchError((dynamic error) {
      print('Error! $error');
    });
  }
}
