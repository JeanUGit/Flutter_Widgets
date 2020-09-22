import 'package:flutter/material.dart';

class Labores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appBar = Container(
        width: 400,
        height: 40,
        decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 2, color: Color.fromARGB(255, 150, 3, 3))),
          color: Colors.transparent,
        ),
        child: Row(children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              child: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 150, 3, 3),
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Expanded(
            child: Center(
                child: Text(
              "Labores",
              style: TextStyle(
                color: Color.fromARGB(255, 150, 3, 3),
                fontSize: 22,
              ),
            )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87
                ),
              ),
            )
          ),
          
        ]));

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top:29
        ),
        color: Color.fromARGB(255,234, 232, 234),
        width: 400,
        height: 800,
        child: Column(
          children: [
              appBar,
              Container(
                width: 400,
                height: 734,
                child: ListView(
                  padding: EdgeInsets.only(
                    top:0
                  ),
                  children: [
                      CardLabores("Aud. de Labores Culturales (Técnico)",Colors.green,"/grado"),
                      CardLabores("Auditoría",Colors.purple,"/grado"),
                      CardLabores("Auditoría C.I Tropical",Colors.lightGreen,"/grado"),
                      CardLabores("Empacadora",Colors.orange,"/grado"),
                      CardLabores("Muestreo",Colors.greenAccent,"/grado"),
                      CardLabores("Observación",Colors.blueAccent,"/grado"),
                      CardLabores("Supervisión",Colors.red,"/grado"),
                  ],
                ),
            ),
          ],
        ),
      )
      
    );
  }
}

class CardLabores extends StatelessWidget {
  String textoLabor = "";
  Color colorCard;
  String rutaPushed = "";
  CardLabores(this.textoLabor,this.colorCard,this.rutaPushed);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 100,
        child: Card(
          color: colorCard,
          child: 
              Center(
                child: Text(
                  textoLabor,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                
                ),
              ),
          ),
        ),
        onTap: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 1),
            content: Text(textoLabor),
            
          ));
          Navigator.of(context).pushNamed(rutaPushed);
        },
    );
  }
}