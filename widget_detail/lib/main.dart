import 'package:flutter/material.dart';

void main() {
  //runApp(const WidgetDetail());
  runApp(const Test());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // uygulamanın başlangıç noktası
      home: Scaffold(
        // boş ekranda açılan siyah ekrandan kurtulmak için Scaffold çağırıyoruz. Bize temel bir layout sağlar. Scaffold ugyulamanın asıl başlangıç noktası olur.
        appBar: AppBar(
          // propertyler küçük harfle başlar ardından gelen kelimeler büyük harfle devam eder.
          title: const Text("Widget Detail"),
          centerTitle:
              true, // centerTitle boolean döner true alırsa içerisindeki text ortaya alınır
          backgroundColor: Colors.deepOrange, // arka plan rengi
          leading: const Text(
              "Menu"), // leading title'dan önce gelen yazıları gösterir
        ),
        body: const Center(
          // beyaz alanı kullanmamızı sağlayan alan
          child: Text(
              "Hello Flutter"), // Center ile birlikte ortaya text yazdırdık.
        ),
        floatingActionButton: FloatingActionButton(
          // + butonunu temsil ediyor widget döndürüyor
          onPressed: () {}, // onpress metodu olmadan çalışmaz
          child: const Text(
              "+"), // text olarak + vererek buton haline getiriyoruz.
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  // Dinamik olarak çalışabileceğimiz verileri burada yazıyoruz
  const Test({super.key});

  @override
  State<Test> createState() => _TesttState();
}

class _TesttState extends State<Test> {
  int value = 0; // 1)int value oluşturduk ve sıfıra eşitledik
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // butonun ortaya gelmesi için
        children: [
          Text(value
              .toString()), //2) valueyi text içerisinde toString yardımıyla yazdırdık
          ElevatedButton(
            onPressed: () {
              setState(() {
                //4 value'nun ekranda değişmesi için setState metodunu kullandık
                value = value + 1; //3) valuenun arttırılmasını sağladık
              });
            },
            child: const Text("Tıkla"),
          )
        ],
      )),
    ));
  }
}
