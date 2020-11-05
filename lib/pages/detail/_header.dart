import 'package:flutter/material.dart';
import 'package:istiqomah/pages/detail/modal/edit.dart';

class Header extends StatelessWidget {
  Header(this.title, {this.onChange});

  final String title;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.all(0),
          constraints: BoxConstraints(),
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsets.all(0),
          constraints: BoxConstraints(),
          color: Colors.white,
          icon: Icon(Icons.edit),
          onPressed: () {
            modalEditHabit(context, title).then(
              (value) => {
                if (value != null && value != '' && onChange != null)
                  onChange(value)
              },
            );
          },
        ),
      ],
    );
  }
}
