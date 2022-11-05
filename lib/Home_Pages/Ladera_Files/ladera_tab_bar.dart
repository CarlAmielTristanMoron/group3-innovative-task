import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Pages/custom_shape.dart';
import 'package:innovative_task1/Images/images.dart';

class LaderaTabBar extends StatefulWidget {
  const LaderaTabBar({Key? key}) : super(key: key);

  @override
  State<LaderaTabBar> createState() => _LaderaTabBarState();
}

class _LaderaTabBarState extends State<LaderaTabBar> {
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
                        Images.kateLaderaProfile
                    )
                ),
              ),
              const Text('Ladera',
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
