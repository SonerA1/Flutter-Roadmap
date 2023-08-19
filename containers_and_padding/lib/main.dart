import 'package:flutter/material.dart';

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
      theme: ThemeData(fontFamily: "soner"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange, //
          leading: const Text("Menu"),
        ),
        body: Container(
          //padding-margin
          //padding: EdgeInsets.all(value)-double parametre alır
          //padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),- Left-top-right-bottom birimlerini kendimiz veririz.
          //padding: const EdgeInsets.only(left: 20.0,top: 10.0) - yalnızca tek bir taraftan padding vermemizi sağlar
          //padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0)  isimden de anlaşıldığı gibi simetrik olarak boşluk verir
          //padiing değeri sadece burada da kullanılmaz
          //-------------------------------------
          //margin

          //margin: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),

          color: Colors.green,
          // containerın renk alanı verdiğimiz text değeri kadar olur
          //  child: const Padding(
          //    padding: EdgeInsets.all(20.0),
          //    child: const Text("Exeample"),

          child: Text("Ornek"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            value = value + 1;
          }),
          child: const Text("+"), //
        ),
      ),
    );
  }
}
