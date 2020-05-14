import 'package:alpha_health/consts/imagePaths.dart';
import 'package:alpha_health/widgets/programmeCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "image": ImagePaths.image1,
      "programmeDuation": "7 day programme",
      "heading": "Working with thoughts",
    },
    {
      "id": 2,
      "image": ImagePaths.image2,
      "programmeDuation": "4 day programme",
      "heading": "4 days of gratitude",
    },
    {
      "id": 3,
      "image": ImagePaths.image1,
      "programmeDuation": "6 day programme",
      "heading": "Working with thoughts in 6 days",
    },
    {
      "id": 4,
      "image": ImagePaths.image2,
      "programmeDuation": "3 day programme",
      "heading": "3 days of gratitude",
    },
    {
      "id": 5,
      "image": ImagePaths.image1,
      "programmeDuation": "10 day programme",
      "heading": "Working with thoughts in 10 days",
    },
    {
      "id": 6,
      "image": ImagePaths.image2,
      "programmeDuation": "9 day programme",
      "heading": "9 days of gratitude",
    }
  ];
  @override
  Widget build(BuildContext context) {
    final _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Evermind",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
      ),
      body: Container(
        height: _deviceHeight,
        color: Colors.orange.withOpacity(0.5),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 85,
              left: 0,
              right: 0,
              child: Container(
                height: _deviceHeight / 3,
                child: Placeholder(),
              ),
            ),
            Positioned(
              top: _deviceHeight / 2.5,
              left: 16.0,
              right: 16.0,
              child: Card(
                borderOnForeground: true,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Recommanded programmes"),
                      SizedBox(height: 16.0),
                      Divider(
                        thickness: 0.5,
                        height: 0.5,
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        height: _deviceHeight / 2.5,
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: data.length,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 32.0,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () => Navigator.pushNamed(context, '/detail', arguments: data[index]),
                              child: ProgrammeCard(
                                tag: "${data[index]["id"]}",
                                image: data[index]["image"],
                                programmeDuation: data[index]["programmeDuation"],
                                heading: data[index]["heading"],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Divider(
                        thickness: 0.5,
                        height: 0.5,
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text("Library"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            title: Text("My Journy"),
          ),
        ],
      ),
    );
  }
}
