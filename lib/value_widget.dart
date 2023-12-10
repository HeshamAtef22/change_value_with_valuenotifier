import 'package:flutter/material.dart';

/*************************الطريقة الاولي "Listener"************************/

class ValueWidget extends StatefulWidget {
   ValueWidget({
    super.key,
     required this.counterValue,
  }) ;


  final ValueNotifier<int> counterValue;

  @override
  State<ValueWidget> createState() => _ValueWidgetState();
}

class _ValueWidgetState extends State<ValueWidget> {

  @override
  void initState() {
    super.initState();
    widget.counterValue.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("${widget.counterValue.value.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80,color: Colors.red),);
  }
}



/*************************الطريقة الاولي "Builder"************************/

class ValueWidget2 extends StatelessWidget {
   ValueWidget2({super.key, required this.counterValue});

  final ValueNotifier<int> counterValue;

  @override
  Widget build(BuildContext context) {
    // هنستدعي ويدجيت ValueListenableBuilder اللي فيها
    //valueListenable : واللي بياخد الفاليو اللي عملناه فوق
    //builder : وهي ميثود برتجعلك كونتكس وفاليو وبترجعلنا ويدجيت
    return ValueListenableBuilder(
        valueListenable: counterValue,
        builder: (context, value, child) {
          return Text("${counterValue.value.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80,color: Colors.red),);

        },
    );
  }
}
