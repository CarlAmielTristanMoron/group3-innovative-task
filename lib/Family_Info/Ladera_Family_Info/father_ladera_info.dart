import 'package:flutter/material.dart';
import 'package:innovative_task1/Images/images.dart';
import 'package:innovative_task1/Information/ladera_family_information.dart';

class FatherLaderaInfo extends StatefulWidget {
  const FatherLaderaInfo({Key? key}) : super(key: key);

  @override
  State<FatherLaderaInfo> createState() => _FatherLaderaInfoState();
}

class _FatherLaderaInfoState extends State<FatherLaderaInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.purple,
                Colors.purpleAccent
              ]
            )
          ),
        ),
        centerTitle: true,
        title: const Text('Divino E. Ladera',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                child: Card(
                  shape: CircleBorder(),
                  elevation: 20,
                  shadowColor: Colors.purpleAccent,
                  child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage(
                        Images.fatherLaderaProfile
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'Name'
                      )
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        ': ${LaderaInformation.names[2]}'
                      )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'Relationship'
                      )
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        ': ${LaderaInformation.relationship[2]}'
                      )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'Occupation'
                      )
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        ': ${LaderaInformation.occupation[2]}'
                      )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'Birthday'
                      )
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        ': ${LaderaInformation.birthday[2]}'
                      )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'Age'
                      )
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        ': ${LaderaInformation.age[2]}'
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
