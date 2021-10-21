import 'package:flutter/material.dart';

void main() {
  runApp(Parcial3());
}

class Parcial3 extends StatelessWidget {
  const Parcial3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Parcial 3'),
        ),
        body: Column(children: <Widget>[
          mensaje(),
          SizedBox(
            height: 10,
          ),
          campoidVuelo(),
          SizedBox(
            height: 10,
          ),
          campoTipoVuelo(),
          SizedBox(
            height: 10,
          ),
          campoDisponibilidad(),
          SizedBox(
            height: 10,
          ),
          botonGuardar(),
          SizedBox(
            height: 10,
          ),
          botonEliminar(),
          SizedBox(
            height: 10,
          ),
          botonUpdate()
        ]),
      ),
    );
  }
}

Widget mensaje() {
  return Text(
    "CRUD FIREBASE",
    style: TextStyle(
      color: Colors.blue,
      fontSize: 50,
    ),
  );
}

Widget campoidVuelo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.badge_sharp),
          hintText: "Id Vuelo",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoTipoVuelo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.inventory_outlined),
          hintText: "Tipo de Vuelo",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoDisponibilidad() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.offline_pin_rounded),
          hintText: "Disponibilidad",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget botonGuardar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Guardar",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}

Widget botonEliminar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Eliminar",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}

Widget botonUpdate() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Actualizar",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}
