import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Card(
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                flex: 2,
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage:
                      AssetImage('assets/image/Rectangle 88 (1).png'),
                )),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Martin Dokidis',
                      style: AppText.mediumdark,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Age: 34',
                      style: AppText.smallGrey,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
