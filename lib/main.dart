import 'package:flutter/material.dart';
import 'animated_opacity_screen.dart';
import 'animated_positioned_screen.dart';
import 'animated_size_screen.dart';
import 'position_transition_screen.dart';
import 'slide_transition_screen.dart';
import 'scale_transition_screen.dart';
import 'size_transition_screen.dart';
import 'rotation_transition_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Tab> myTabs = [
    Tab(text: 'Opacity'),
    Tab(text: 'Positioned'),
    Tab(text: 'Size'),
    Tab(text: 'Position'),
    Tab(text: 'Slide'),
    Tab(text: 'Scale'),
    Tab(text: 'Size'),
    Tab(text: 'Rotation'),
  ];

  final List<Widget> myScreens = [
    AnimatedOpacityScreen(),
    AnimatedPositionedScreen(),
    AnimatedSizeScreen(),
    AnimatedLogoScreen(),
    SlideTransitionScreen(),
    ScaleTransitionScreen(),
    SizeTransitionScreen(),
    RotationTransitionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Widgets Demo'),
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myScreens,
        ),
      ),
    );
  }
}
