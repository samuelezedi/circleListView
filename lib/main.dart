import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CirleListView(),
    );
  }
}

class CirleListView extends StatefulWidget {
  @override
  _CirleListViewState createState() => _CirleListViewState();
}

class _CirleListViewState extends State<CirleListView> {

  Widget _buildItem(int i) {
    return Center(
      child: Image.asset('assets/image/member-answered@300x.png')

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CircleListScrollView(
            physics: CircleFixedExtentScrollPhysics(),
            axis: Axis.vertical,
            itemExtent: 80,
            children: List.generate(20, _buildItem),
            radius: MediaQuery.of(context).size.width * 0.6,
            onSelectedItemChanged: (int index) => print('Current index: $index'),
          ),
        ),
        ),
      );

  }
}
