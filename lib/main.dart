import 'package:flutter/material.dart';
import 'package:inherited_widget_example/inherited_widget.dart';
import 'package:inherited_widget_example/inherited_widget_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      age: 50,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: const InheritedWidgetExample(),
      ),
    );
  }
}

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget Example",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Age : Click Below button to see age",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.indigo)),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const InheritedWidgetScreen()));
            }, child: const Text("Navigate"))
          ],
        ),
      ),
    );
  }
}

