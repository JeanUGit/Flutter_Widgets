import 'package:flutter/material.dart';

class Laborgrado extends StatefulWidget {
  @override
  _LaborgradoState createState() => _LaborgradoState();
}

class _LaborgradoState extends State<Laborgrado> {
  @override
  Widget build(BuildContext context) {
    final bar = Container(
      width: 400,
      height: 50,
      color: Colors.brown,
      child: Text(
        "Grado",
        style: TextStyle(
          color:Colors.white
        ),
      ),
    );


    final listView = ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 29,
            right: 20,
            left: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255,218, 218, 218)
          ),
          child: Row(
           children: <Widget> [
             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Calibración Grado"),
                 Text("Validación orden de Corte")
               ],
             ),
             Icon(Icons.keyboard_arrow_down)
           ],
          ),
        )
      ],
    );

    return Stack(
      children: [
          Scaffold(
            body: listView,
          )
      ],
      
    );
  }
}

class Grados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}