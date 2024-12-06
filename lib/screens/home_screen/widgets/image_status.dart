import 'package:flutter/material.dart';

import '../../../constant/image_string.dart';


class ImageAndStatus extends StatelessWidget {
  const ImageAndStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image(
            image: const AssetImage(ZImages.seven),
            height: MediaQuery.of(context).size.height * .35,
          ),
          const Text(
            '27°C',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 52),
          ),
          const Text(
            'THUNDERSTORM',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 25),
          ),
          const Text(
            'Thursday 03 - 11:17 am',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'IBM_Plex_Sans',
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}