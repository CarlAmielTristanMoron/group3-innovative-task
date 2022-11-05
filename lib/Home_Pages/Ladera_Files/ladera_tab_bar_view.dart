import 'package:flutter/material.dart';
import 'package:innovative_task1/Family_Info/Ladera_Family_Info/brother_ladera_info.dart';
import 'package:innovative_task1/Family_Info/Ladera_Family_Info/father_ladera_info.dart';
import 'package:innovative_task1/Family_Info/Ladera_Family_Info/ladera_info.dart';
import 'package:innovative_task1/Family_Info/Ladera_Family_Info/mother_ladera_info.dart';
import 'package:innovative_task1/Images/images.dart';
import 'package:innovative_task1/Information/ladera_family_information.dart';

class LaderaTabBarView extends StatefulWidget {
  const LaderaTabBarView({Key? key}) : super(key: key);

  @override
  State<LaderaTabBarView> createState() => _LaderaTabBarViewState();
}

class _LaderaTabBarViewState extends State<LaderaTabBarView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                    Images.kateLaderaProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  LaderaInformation.names[0]
              ),
              subtitle: Text(
                  LaderaInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LaderaInfo()
                  )
                );
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                    Images.motherLaderaProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  LaderaInformation.names[1]
              ),
              subtitle: Text(
                  LaderaInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MotherLaderaInfo()
                  )
                );
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                    Images.fatherLaderaProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  LaderaInformation.names[2]
              ),
              subtitle: Text(
                  LaderaInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FatherLaderaInfo()
                  )
                );
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                  Images.brotherLaderaProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  LaderaInformation.names[3]
              ),
              subtitle: Text(
                  LaderaInformation.relationship[3]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BrotherLaderaInfo()
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
