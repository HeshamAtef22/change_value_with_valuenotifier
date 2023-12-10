import 'package:change_value_with_valuenotifier/value_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'change_value_with_valuenotifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //هناخد اوبجيكت من الفاليو نوتيفاير  ونممرلها المتغير
  ValueNotifier<int> _counterValue = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('valuenotifier'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed:  (){
                _counterValue.value++;
              },
              child: Icon(Icons.add),
            ),
            ValueWidget(counterValue: _counterValue),
            FloatingActionButton(
              onPressed:  (){
                _counterValue.value--;
              },
              child: Icon(Icons.remove),
            ),

          ],
        )
      )
    );
  }


}




