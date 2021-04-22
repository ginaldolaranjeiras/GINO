import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
      child: CircleAvatar(
        foregroundColor: Colors.black,
        child: ClipOval(
          child: Image(
            image: AssetImage(
              'packages/me.jpg',
            ),
          ),
        ),
        maxRadius: 100.0,
        minRadius: 10.00,
      ),
    );
  }
}
