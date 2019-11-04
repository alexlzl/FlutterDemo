import 'package:flutter/material.dart';

import '自定义widget.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<MyHomePage> {
  List<BaseData> data = List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义绘制Widget'),
      ),
      body: Container(
        child: buildDemoPaintWidget(),
      ),
    );
  }

  Widget buildDemoPaintWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 350,
          child: buildPaintWidget(),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  BaseData book1 = BaseData(name: '书籍A', num: 5000);
                  BaseData book2 = BaseData(name: '书籍B', num: 2000);
                  BaseData book3 = BaseData(name: '书籍C', num: 3000);
                  List<BaseData> dataList = List();
                  dataList.add(book1);
                  dataList.add(book2);
                  dataList.add(book3);
                  setState(() {
                    this.data = dataList;
                  });
                },
                child: Text('三本书'),
              ),
              MaterialButton(
                onPressed: () {
                  BaseData book4 = BaseData(name: '书籍D', num: 4500);
                  setState(() {
                    this.data.add(book4);
                  });
                },
                child: Text('四本书'),
              ),
              MaterialButton(
                onPressed: () {
                  BaseData book5 = BaseData(name: '书籍E', num: 2500);
                  setState(() {
                    this.data.add(book5);
                  });
                },
                child: Text('五本书'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //构建自定义绘制的Widget
  Widget buildPaintWidget() {
    return CustomPaint(
      painter: MyCustomPainter(data),
    );
  }
}
