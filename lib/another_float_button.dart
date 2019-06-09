import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//Este es el código para el nuevo Widget del floatButton que va reemplazar el que
//se usa por defecto.
class AnotherFloatButton extends StatelessWidget {
  AnotherFloatButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Row(
          //Se pone el texto y la imagen en una fila.
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.explore,
              color: Colors.amber,
            ),
            SizedBox(
              //Separador entre el icono y el texto
              width: 8.0,
            ),
            Text(
              'PURCHASE',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape:
          const StadiumBorder(), //Le da una apariencia al boton con las esquinas redondeadas.
    );
  }
}
