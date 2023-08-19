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
      theme: ThemeData(
          fontFamily:
              "soner"), // font dosyasını bütün uygulamaya dökmek için bu metodu kullanıyoruz
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
            Text(
              "Test Test",
              style: TextStyle(
                  //font ekleyebilmek için googledan indirdiğimiz font dosyalarını lib dosyasının içine klasörledik.Daha sonra dökümanların içinde olan pubspec.yaml dosyasında düzünlemeler yaptık
                  fontFamily: "soner",
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 10,
                  color: Colors.deepOrange[
                      400]), //yazıboyutu,kalınlık,kelimeler arası boşluk
            ),
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
