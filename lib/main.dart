import 'package:flutter/material.dart';
import 'another_float_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Este Widget es el inicio o la raiz de nuestra app, pero es inmutable
  //No podemos generar cambios acá como por ejemplo actualizar un texto o cambiar
  //el valor de una variable, porque no se va a ejecutar, para eso tenemos el siguiente
  // el StatefulWidget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Float Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //Por ejemplo esto es lo que vamos a ver de mensaje en la barra superior de nuesta
      //App.
      home: MyHomePage(title: 'New FloatButton Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //Constructor de la clase que recibe las variables en este caso title.
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//Objeto State
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      //En esta sección se creo un nuevo widget que reemplaza el anterior floatButton
      //para poder modificarlo con base en las necesidades del cliente.
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnotherFloatButton(
          onPressed: _incrementCounter,
        ),
      ),
    );
  }
}
