import 'package:flutter/material.dart';

import 'package:gino/views/pages/homepage.dart';

class Gino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
