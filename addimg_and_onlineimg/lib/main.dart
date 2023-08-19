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
        body: const Center(
          child: Image(image: AssetImage("lib/assets/image/image2.jpg")),
          // resim ekleyebilmek için pubspec.yaml dosyasında düzünleme yaptık.
          // child: Image(
          //    ekleme işlemi için bu methodu kullandık
          //   image: AssetImage("lib/assets/image/image2.jpg"),
          //),
          // child: Image.network(
          //     "https://www.pexels.com/tr-tr/fotograf/siyah-ve-gri-dizustu-bilgisayar-bilgisayar-kodlarini-yapmayi-acti-1181271/")),
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
