import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class BrowsePage extends StatefulWidget {
  @override
  BrowsePageMainState createState() =>
      BrowsePageMainState();
}

class BrowsePageMainState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: Text("hey mr. crazy"),
          ),
        ]
    );
  }
}
