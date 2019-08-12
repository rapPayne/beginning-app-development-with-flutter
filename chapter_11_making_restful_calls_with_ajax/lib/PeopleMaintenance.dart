import 'package:flutter/material.dart';
import 'PeopleList.dart';

class PeopleMaintenance extends StatefulWidget {
  PeopleMaintenance({Key key}) : super(key: key);
  @override
  _PeopleMaintenanceState createState() => _PeopleMaintenanceState();
}

class _PeopleMaintenanceState extends State<PeopleMaintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('People Maintenance'),
        ),
        body: PeopleList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/peopleUpsert');
          },
          child: Icon(Icons.add),
        ),
    );
  }
}
