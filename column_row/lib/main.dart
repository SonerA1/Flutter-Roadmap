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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange, //
          leading: const Text("Menu"),
        ),
        body: Row(
          /*CrossAxisAligment Kullanımı
          crossAxisAlignment: CrossAxisAlignment.stretch- dikey olarak konumlandırır 
          crossAxisAlignment: CrossAxisAlignment.center, default olarak gelir
          crossAxisAlignment: CrossAxisAlignment.start, yukarıdan aşağıya doğru konumlandırır 
          crossAxisAlignment: CrossAxisAlignment.end en büyük olan widgetın boyutuna doğru genişletir*/

          crossAxisAlignment: CrossAxisAlignment.end,

          //*MainAxixsAligment Kullanımı */
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAligment yatay düzlemde row widegtını ana axix yapmayı sağlar. Widgetleri yatay düzlemde konumlandırmamızı sağlar
          //MainAxisAlignment.start, Default olarak kullanılır
          //MainAxisAlignment.center, // ordata belirtir
          //MainAxisAlignment.spaceEvenly, // boşluklu şekilde widgetları ortalar
          //MainAxisAlignment.spaceBetween, // widgetların yalnızca ortalarına boşluk verir

          /* row widgeti ekranda eklediğimiz yerde birden fazla child tutar ve method olarak artık childeren kullanıyoruz.*/
          children: <Widget>[
            const Text("Example"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Tıkla"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text("Conainer"),
            )
          ],
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
