import 'package:flutter/material.dart';
import './Person.dart';

class ManagePeople extends StatelessWidget {
  final List<Map> people;
  final Function deletePerson;
  final Function addPerson;
  final Function updatePerson;
  ManagePeople(
      {this.people, this.addPerson, this.deletePerson, this.updatePerson});

  @override
  Widget build(BuildContext context) {
    double _swipeStartX;
    String _swipeDirection;
    return GestureDetector(
      onScaleUpdate: (e) {
        print("Scaling " + e.toString());
        if (e.scale > 2.0) addPerson(context);
      },
      child: ListView(
        children: people
            .map((person) => GestureDetector(
                  child: Person(person: person),
                  onLongPress: () {
                    deletePerson(person, context);
                  },
                  onHorizontalDragStart: (e) {
                    _swipeStartX = e.globalPosition.dx;
                  },
                  onHorizontalDragUpdate: (e) {
                    _swipeDirection =
                        (e.globalPosition.dx > _swipeStartX) ? "Right" : "Left";
                  },
                  onHorizontalDragEnd: (e) {
                    if (_swipeDirection == "Right")
                      updatePerson(person, status: "nice");
                    else
                      updatePerson(person, status: "naughty");
                  },
                ))
            .toList(),
      ),
    );
  }
}
