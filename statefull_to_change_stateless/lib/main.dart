import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:statefull_to_change_stateless/constant/colors.dart';

void main() {
  //runApp(const WidgetDetail());
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  // bir önceki bölümde yaptığımız statefull mantığını burada kullanıyoruz
// bunun için ctrl+shift+r yaparak çıkan metodu kullanıyoruz
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  // int ekliyoruz
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange, //
          leading: const Text("Menu"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString()),
            Text("Test Test",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                  color: HexColor(primaryColor), // hexcolor eklentisi
                  //color: Colors.deepOrange[400]), //yazıboyutu,kalınlık,kelimeler arası boşluk
                )),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text("+"), //
        ),
      ),
    );
  }
}
