import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'map.dart';
import 'collection.dart';
import 'browse.dart';
import 'search.dart';
import 'setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        home: CupertinoPageScaffold(
          navigationBar: new CupertinoNavigationBar(
            leading: Icon(CupertinoIcons.back),
            middle: Text("KijiMap"),
            trailing: Icon(CupertinoIcons.forward),
          ),
          child: new MyHomePage(),
        ));
  }
}

// BottomTabBar
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('マップ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            title: Text('整理'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('ブラウズ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('検索'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('設定'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return MapPage();
                break;
              case 1:
                return CollectionPage();
                break;
              case 2:
                return BrowsePage();
                break;
              case 3:
                return SearchPage();
                break;
              case 4:
                return SettingPage();
                break;
            }
          },
        );
      },
    );
  }
}


