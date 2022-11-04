import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Pages/custom_shape.dart';
import 'package:innovative_task1/Images/images.dart';

class MontefalconTabBar extends StatefulWidget {
  const MontefalconTabBar({Key? key}) : super(key: key);

  @override
  State<MontefalconTabBar> createState() => _MontefalconTabBar();
}

class _MontefalconTabBar extends State<MontefalconTabBar> {
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
                    height: 35,
                    width: 30,
                    fit: BoxFit.fill,
                    image: AssetImage(
                        Images.montefalconProfile
                    )
                ),
              ),
              const Text('Montefalcon',
                style: TextStyle(
                    fontSize: 6
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}