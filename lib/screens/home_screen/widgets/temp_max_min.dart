import 'package:flutter/material.dart';

import '../../../constant/image_string.dart';


class TempMaxMin extends StatelessWidget {
  const TempMaxMin({
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
                ZImages.nine,
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
                  'Temp Max',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '12°C',
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
                ZImages.ten,
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
                  'Temp Min',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '8°C',
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