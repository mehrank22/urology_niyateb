import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: defaultPadding * 1.5),
          child: Text(
            "نیاطب",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: defaultPadding * 1.5),
          child: Text(
            "!به آموزش اورولوژی خوش آمدید",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: defaultPadding * 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //const Spacer(),
            Expanded(
              flex: 15,
              child: Image.asset(
                "assets/images/welcome2.png",
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
