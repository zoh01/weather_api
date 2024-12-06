import 'package:flutter/material.dart';
import 'package:weather_api/screens/home_screen/widgets/sun_rise_set.dart';
import 'package:weather_api/screens/home_screen/widgets/temp_max_min.dart';

import 'image_status.dart';


class AllFeatures extends StatelessWidget {
  const AllFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Ibadan, Oyo State',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Good Afternoon',
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),

        /// Image & Status
        const ImageAndStatus(),

        const SizedBox(height: 15),
        Column(
          children: [
            /// Sunrise & Sunset
            const SunRiseSet(),
            const SizedBox(height: 10),

            Divider(color: Colors.grey.shade600),
            const SizedBox(height: 10),

            /// Temp Max & Min
            const TempMaxMin(),
          ],
        )
      ],
    );
  }
}