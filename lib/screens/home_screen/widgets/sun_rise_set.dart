import 'package:flutter/material.dart';

import '../../../constant/image_string.dart';


class SunRiseSet extends StatelessWidget {
  const SunRiseSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(
              image: AssetImage(
                ZImages.six,
              ),
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  'Sunrise',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '5:38 am',
                  style: TextStyle(
                      color: Colors.white70, fontSize: 16),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Image(
              image: AssetImage(
                ZImages.eleven,
              ),
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  'Sunset',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '6:35 pm',
                  style: TextStyle(
                      color: Colors.white70, fontSize: 16),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}