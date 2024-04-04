import 'package:flutter/material.dart';
import 'package:inherited_widget_example/inherited_widget.dart';

class InheritedWidgetScreen extends StatefulWidget {
  const InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetScreen> createState() => _InheritedWidgetScreenState();
}

class _InheritedWidgetScreenState extends State<InheritedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    final inheritedWidgetObject = MyInheritedWidget.of(context);
    return Scaffold(
      body: Center(
        child: Text("Age :: ${inheritedWidgetObject.age}",style: const TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500,fontSize: 25),),
      ),
    );
  }
}
