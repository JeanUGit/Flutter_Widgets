import 'package:flutter/material.dart';

class Finca extends StatefulWidget {
  @override
  _FincaState createState() => _FincaState();
}

class _FincaState extends State<Finca> {
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
          Expanded(
            child: Center(
                child: Text(
              "FINCAS",
              style: TextStyle(
                color: Color.fromARGB(255, 150, 3, 3),
                fontSize: 22,
              ),
            )),
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              child: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 150, 3, 3),
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
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
                child: ListView.builder(
                  padding: EdgeInsets.only(
                    top:0
                  ),
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                return FincasInfo();
                },
            ),
              ),
          ],
        ),
      )
    );
  }
}

class FincasInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Card( 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              child: Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text("Finca Prueba"),
              )
            ),
            Align(
              child: Row(
                children: <Widget> [
                  Icon(Icons.people),
                  Text("0")
                ],
              ),
            ),
            Align(
              child: Image.asset("assets/image/sync.png",width: 30,height: 30,)
            )
          ],
        ),
      ),
    );
  }
}