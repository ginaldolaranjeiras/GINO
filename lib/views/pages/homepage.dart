import 'package:flutter/material.dart';
import 'package:gino/views/components/avatar.dart';
import 'package:gino/views/components/expandedskills.dart';
import 'package:gino/views/components/profile_name.dart';

import 'package:gino/views/components/skiils.dart';
import 'package:gino/views/components/social.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Avatar(),
            ProfileName(),
            Social(),
            Skills(),
            SkillsExpandedPainel(),
          ],
        ),
      ),
    );
  }
}
