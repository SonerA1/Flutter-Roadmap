import 'package:flutter/material.dart';

void main() {
  //runApp(const WidgetDetail());
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "soner"),
      /*home: Center(
            // alignment: Alignment.bottomCenter,// merkezi olarak yer değiştirir
            child: Container(
          /*alignment: Alignment.bottomCenter*/ color: Colors.red,
          //width: 100,
          //height: 100
          child: Container(color: Colors.green, width: 200, height: 200),*/

      /*home: Center(
        child: UnconstrainedBox(
          child: Container(color: Colors.white, width: 100, height: 100),
        ),
      )*/

      home: Row(children: [
        // Expanded(
        //   // buradaki botuylar expanded widget tarafından belirleniyor.
        //   child: Container(
        //     color: Colors.red,
        //     child: Text("Hello HEllo Heelo Helloooo"),
        //   ),
        // ),
        // Expanded(
        //   child: Container(
        //     color: Colors.white,
        //     child: Text("World"),
        //   ),
        // )
        Flexible(
          flex:
              2, //-> üst taraf birim olarak iki birimlik aşağıya flex eklemezsek alt taraf default olarak 1br lik yer kaplar
          child: Container(
            color: Colors.red,
            child: Text("Hello HEllo Heelo Helloooo"),
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.white,
            child: Text("World"),
          ),
        )
      ]),
    );
  }
}
