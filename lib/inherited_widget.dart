import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget
{
  final int age;

  const MyInheritedWidget({super.key, required this.age,required super.child});

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return (oldWidget.age != age);
  }

  static MyInheritedWidget of(BuildContext context)
  {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }

}