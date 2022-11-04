import 'package:flutter/material.dart';


import '../../Images/images.dart';
import '../custom_shape.dart';

class NacarioTabBar extends StatefulWidget {
  const NacarioTabBar({Key? key}) : super(key: key);

  @override
  State<NacarioTabBar> createState() => _NacarioTabBarState();
}

class _NacarioTabBarState extends State<NacarioTabBar> {
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
                child: const Image(
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                    image: AssetImage(
                        Images.kennNacarioProfile
                    )
                ),
              ),
              const Text('Nacario',
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
