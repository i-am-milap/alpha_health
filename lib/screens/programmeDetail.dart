import 'package:alpha_health/widgets/dayHeader.dart';
import 'package:flutter/material.dart';

class ProgrammeDetail extends StatelessWidget {
  final data;
  ProgrammeDetail(this.data);
  @override
  Widget build(BuildContext context) {
    final _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Hero(
              tag: "${data["id"]}",
              child: Image.asset(
                data["image"],
                fit: BoxFit.cover,
                height: _deviceHeight / 2,
              ),
            ),
          ),
          // Center(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
          //     child: Card(
          //       elevation: 4.5,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10.0),
          //       ),
          //       child: Container(
          //         padding: const EdgeInsets.only(top: 16.0),
          //         //   height: _deviceHeight / 2.3,
          //         width: MediaQuery.of(context).size.width,
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           children: <Widget>[
          //             Text(data["programmeDuation"]),
          //             SizedBox(height: 16.0),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //               child: Text(
          //                 data["heading"],
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   fontSize: 32.0,
          //                 ),
          //                 maxLines: 2,
          //               ),
          //             ),
          //             SizedBox(height: 16.0),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //               child: Text(
          //                 "In this 7-day programme, we'll help you to write your  thoughts down, identify any negative thinking and ...  ",
          //                 style: TextStyle(
          //                   fontSize: 18.0,
          //                 ),
          //                 maxLines: 3,
          //               ),
          //             ),
          //             SizedBox(height: 16.0),
          //             Divider(
          //               thickness: 0.5,
          //               height: 0.5,
          //             ),
          //             FlatButton(
          //               onPressed: () {},
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: <Widget>[Text("Keep reading"), Icon(Icons.chevron_right)],
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            top: _deviceHeight / 3,
            left: 16,
            right: 16,
            child: Card(
              elevation: 4.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 16.0),
                //   height: _deviceHeight / 2.3,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(data["programmeDuation"]),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        data["heading"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32.0,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "In this 7-day programme, we'll help you to write your  thoughts down, identify any negative thinking and ...  ",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Divider(
                      thickness: 0.5,
                      height: 0.5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Text("Keep reading"), Icon(Icons.chevron_right)],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: _deviceHeight / 1.40,
            left: 0,
            right: 0,
            child: DayHeader(dayHeader: "Day 1"),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        notchMargin: 0.0,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: FlatButton(
            color: Color(0xFF3E3F43),
            onPressed: () {},
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Text(
              "Start the programme",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
