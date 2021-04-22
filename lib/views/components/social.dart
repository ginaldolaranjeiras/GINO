import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onDoubleTap: () {},
            child: Center(
              child: SvgPicture.asset(
                "packages/in.svg",
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
                child: SvgPicture.asset(
              "packages/wwp.svg",
              alignment: Alignment.center,
              fit: BoxFit.fill,
            )),
          ),
          GestureDetector(
            onDoubleTap: () {},
            child: Center(
                child: SvgPicture.asset(
              "packages/ghub.svg",
              alignment: Alignment.center,
              fit: BoxFit.fill,
            )),
          ),
        ],
      ),
    );
  }
}
