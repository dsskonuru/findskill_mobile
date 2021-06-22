// TODO: Build the UI along with appropriate tests for Dashboard Page @dheerajv09

import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  final VoidCallback openDrawer;
  const DashBoardPage({Key? key, required this.openDrawer}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dashboard"),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: widget.openDrawer,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1,vertical: MediaQuery.of(context).size.height * 0.06),
          child: Expanded(
            child: Column(
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'John Doe',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(0.5),
                  height: 200,
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.grey.withOpacity(0.5),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(0.5),
                  height: 100,
                  child: Center(child: const Text("Get More opportunities")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
