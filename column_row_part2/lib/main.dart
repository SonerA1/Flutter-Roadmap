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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end, // yatay eksen
          /*---Column---*/
          /*Column'larda dikey eksende widgetları yerleştirir. Uygulamada sol üstünden sol altına doğru gider.
          MainAxisAlignment.start default olarak gelir
          MainAxisAlignment.center, column kısmında ortaya gelir
          MainAxisAlignment.end column en altına yerleşir
          MainAxisAlignment.spaceAround aralarında ve çevrelerinde boşluk bulunduruyor
          MainAxisAlignment.spaceBetween widgetlar arası boşluk sağlıyor
          MainAxisAlignment.spaceEvenly boşluklar hem aralarında hemde köşelere göre oluşuyor
          crossAxisAlignment: CrossAxisAlignment.stretch widgetların sağ tarafa doğru esnemesini sağlar
          CrossAxisAlignment.center en büyük genişliğe sahip widgete göre ortalanmış şekilde boşluk bırakır
           CrossAxisAlignment.end en büyük widgetın ekseninin sonuna doğru esnerler*/
          children: [
            const Text("Example"),
            ElevatedButton(onPressed: () {}, child: const Text("Tıkla")),
            Container(
              color: Colors.purple,
              padding: EdgeInsets.all(30),
              child: const Text("Container"),
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
