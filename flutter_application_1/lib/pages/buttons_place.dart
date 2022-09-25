import 'package:flutter/material.dart';

class ButtonsPlace extends StatelessWidget {
  const ButtonsPlace({Key? key, required this.icon, required this.label}) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => {print(MediaQuery.of(context).size.width)},
      onTap: () => {print(label)},
      child: Container(
        child: Column(
          children: [
            Icon(icon),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}