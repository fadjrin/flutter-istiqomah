import 'package:flutter/material.dart';
import 'package:istiqomah/widgets/habits/item/item.dart';
import 'package:istiqomah/widgets/habits/modal/add.dart';

class Habit {
  const Habit({this.name});
  final String name;

  static void addModal(context) {
    modalAddHabit(context);
  }
}

class HabitList extends StatefulWidget {
  HabitList({Key key, this.habits}) : super(key: key);

  final List<Habit> habits;

  @override
  _HabitListState createState() => _HabitListState();
}

class _HabitListState extends State<HabitList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.habits
          .map(
            (item) => HabitItem(
              habit: item,
            ),
          )
          .toList(),
    );
  }
}
