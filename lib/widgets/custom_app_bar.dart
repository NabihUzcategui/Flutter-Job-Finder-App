import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'splash');
            },
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            iconSize: 40.0,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/search.svg'),
                iconSize: 40.0,
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                iconSize: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
