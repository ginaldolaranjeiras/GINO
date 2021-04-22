import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "GINALDO LARANJEIRAS JR.",
            textScaleFactor: 2.0,
          ),
        ),
        Text(
          "Desenvolvedor de Software",
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
