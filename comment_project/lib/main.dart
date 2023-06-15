// import: immortoo
import 'package:flutter/material.dart';

// void: main funksiasinin tibi
// main: funksianyn aty
// (): main funksiasynyn parametri
// {}: main funksiasynyn denesi
void main() {
  // runApp: Tirkemeni jurguzup beret
  // const: ozgorboi torgan nersege berebis
  // MyApp(): classtyn aty
  runApp(const MyApp());
}

// class: keyword, classtyn dartka bir tushunuk kirgize alabys
// MyApp: classtyn aty
// extends: muras alat. MyApp <--- StatelessWidget
// StatelessWidget: Widget
class MyApp extends StatelessWidget {
  // super: child classtan parent classka otkoryn beret. MyApp ---> StatelessWidget
  const MyApp({super.key});

  // @override: parent classtagy method du child classta ozgortup jazuu. MyApp <--- StatelessWidget
  @override
  // Widget: build methodunun kaitaruu tibi
  // build: methoddun aty
  // (BuildContext context): build methoddunun parametri
  // {}: build methodunun denesi
  Widget build(BuildContext context) {
    // return: kaitarip beret
    // MaterialApp: bul bir -> Widget
    return MaterialApp(
      // title: MaterialApp proportisi. Ozino String alat.
      title: 'Flutter Demo',
      // theme: MaterialApp proportisi. Ozino ThemeData alat
      // ThemeData: bul -> Widget
      theme: ThemeData(
        // colorScheme: ThemeData proportisi. Ozino ColorScheme alat
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: ThemeData proportisi. Ozino bool alat
        useMaterial3: true,
      ),
      // home: MaterialApp proportisi. Ozino Widget alat
      // MyHomePage: bul bir Widget
      // title: MyHomePage proportisi. Ozino Strign alat
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class: keyword, classtyn dartka bir tushunuk kirgize alabys
// MyHomePage: classtyn aty
// extends: muras alat. MyApp <--- StatefulWidget
class MyHomePage extends StatefulWidget {
  // MyHomePage({}): constructor.
  // super: child classtan parent classka otkoryn beret. MyApp ---> StatefulWidget
  // required: sozsuz turdo beruu kerek
  const MyHomePage({super.key, required this.title});
  // final: ozgorboit
  // String: title proportinin tibi
  // title: proportinin aty
  final String title;
  // @override: parent classtagy method du child classta ozgortup jazuu. MyApp <--- StatefulWidget
  @override
  // State: abal
  // <MyHomePage>: MyHomePage turun berebis
  // createState(): methoddun aty
  // _MyHomePageState: classtun aty
  State<MyHomePage> createState() => _MyHomePageState();
}

// class: keyword, classtyn dartka bir tushunuk kirgize alabys
// _MyHomePageState: classtun aty
// extends: muras alat. MyApp <--- State<MyHomePage>
class _MyHomePageState extends State<MyHomePage> {
  // int: _counterdin tibi
  // _counter: ozgormonun aty
  // 0: ozgormonun maanisi
  int _counter = 0;
  // void: _incrementCounterdin tibi
  // _incrementCounter: methoddun aty
  // (): _incrementCounterdin parameri
  // {}: _incrementCounterdin denesi
  void _incrementCounter() {
    // setState: method
    setState(() {
      // _counter: ozgormonun aty
      _counter++;
    });
  }

  // @override: parent classtagy method du child classta ozgortup jazuu. MyApp <--- StatefulWidget
  @override
  // Widget: build methodunun kaitaruu tibi.
  // (BuildContext context): build methoddunun parametri
  Widget build(BuildContext context) {
    // return: kaitaryp beruu
    // Scaffold: bul -> Widget. Ekran kurup beret
    return Scaffold(
      // appBar: Scaffolddin proportisi
      // AppBar: bul Widget. tirkemenin shapkasy
      appBar: AppBar(
        // backgroundColor: AppBardin proportisi. Color alat
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: AppBardin proportisi. Widget alat
        // Text: bul Widget
        title: Text(widget.title),
      ),
      // body: Scaffold proportisi. Widget alat
      // Center: bul Widget. centerge koiup beret
      body: Center(
        // child: Centerdin proportisi. Widget alat
        // Column: bul Widget. Elementterdii tiginen tizip beret
        child: Column(
          // mainAxisAlignment: Columndun proportisi. elementterdin ordularyp ozgortup beret
          mainAxisAlignment: MainAxisAlignment.center,
          // children: Columndun proportisi. Bir neche Widgettterdi ala alat.
          // <Widget>: generic widgetterdi bere alabiz
          children: <Widget>[
            // const: ozgorboi torgan nersege berebis
            // Text: bul Widget
            const Text(
              'You have pushed the button this many times:',
            ),
            // Text: bul Widget
            // '$_counter': ozgormonun aty
            Text(
              '$_counter',
              // style: Text proportisi. TextStyle alat
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // floatingActionButton: Scaffold proportisi. Ozuno Widget alat.
      // FloatingActionButton: bul Widget. Tegerek knopka beret
      floatingActionButton: FloatingActionButton(
        // onPressed: FloatingActionButton proportisi. FloatingActionButtondin atkaruusu jazylat
        onPressed: _incrementCounter,
        // tooltip: FloatingActionButton proportisi. Text chigat
        tooltip: 'Increment',
        // child: FloatingActionButton proportisi. Widget alat
        // const: ozgorboi torgan nersege berebis
        // Icon: bul Widget. Iconka alat
        child: const Icon(Icons.add),
      ),
    );
  }
}
