import 'package:flutter/material.dart';
import 'package:innovative_task1/Family_Info/Montefalcon_Family_Info/father_montefalcon_info.dart';
import 'package:innovative_task1/Family_Info/Montefalcon_Family_Info/montefalcon_info.dart';
import 'package:innovative_task1/Family_Info/Montefalcon_Family_Info/mother_montefalcon_info.dart';
import 'package:innovative_task1/Images/images.dart';
import 'package:innovative_task1/Information/montefalcon_family_information.dart';


class MontefalconTabBarView extends StatefulWidget {
  const MontefalconTabBarView({Key? key}) : super(key: key);

  @override
  State<MontefalconTabBarView> createState() => _MontefalconTabBarView();
}

class _MontefalconTabBarView extends State<MontefalconTabBarView> {

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
              leading:  const Image(
                image: AssetImage(
                  Images.montefalconProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  MontefalconInformation.names[0]
              ),
              subtitle: Text(
                  MontefalconInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MontefalconInfo()
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
                  Images.fatherMontefalconProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                MontefalconInformation.names[1]
              ),
              subtitle: Text(
                MontefalconInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FatherMontefalconInfo()
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
                  Images.motherMontefalconProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                MontefalconInformation.names[2]
              ),
              subtitle: Text(
                MontefalconInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MotherMontefalconInfo()
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