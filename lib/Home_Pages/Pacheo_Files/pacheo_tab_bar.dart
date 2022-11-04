import 'package:flutter/material.dart';

import '../../Images/images.dart';
import '../custom_shape.dart';


class PacheoTabBar extends StatefulWidget {
  const PacheoTabBar({Key? key}) : super(key: key);

  @override
  State<PacheoTabBar> createState() => _PacheoTabBarState();
}

class _PacheoTabBarState extends State<PacheoTabBar> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: CustomPaint(
        painter: CustomShape(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:  const Image(
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                    image: AssetImage(
                        Images.pacheoProfile
                    )
                ),
              ),
              const Text('Pacheo',
                style: TextStyle(
                    fontSize: 10
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
