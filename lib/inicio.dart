// import 'dart:html';

import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final appBar = Container(
        margin: EdgeInsets.only(top: 29),
        width: 400,
        height: 60,
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
              "INICIO",
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

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255,234, 232, 234),
          appBar: AppBar(
           backgroundColor: Color.fromARGB(255,234, 232, 234),
            title: appBar,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 150, 3, 3),
              indicatorColor: Color.fromARGB(255, 150, 3, 3),
              indicatorWeight: 2.0,
              indicator: BoxDecoration(
                color: Color.fromARGB(255, 127, 125, 127)
              ),
              tabs: [
                  Tab(
                    text: "RESUMEN",
                  ),
                  Tab(
                    text: "MAPA",
                  )
                ]
            ) ,
          ),
          body: TabBarView(
            children: [
             Resumen(),
             Mapa() 
            ]
          ),
        ));
  }
}

//RESUMEN

class Resumen extends StatefulWidget {
  @override
  _ResumenState createState() => _ResumenState();
}

class _ResumenState extends State<Resumen> {
  String _dropDownButton1 = "Seleccione";
  String _dropDownButton2 = "Seleccione";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: DropdownButton(
                      value: _dropDownButton2,
                      isExpanded: true,
                      underline: Container(
                        color: Colors.transparent,
                      ),
                      icon:
                          Icon(Icons.keyboard_arrow_down, color: Colors.black),
                      iconSize: 30,
                      items: <String>["Seleccione", "Operarios"]
                          .map((String valueItem) {
                        return DropdownMenuItem<String>(
                            value: valueItem, child: Text(valueItem));
                      }).toList(),
                      onChanged: (String itemValue) {
                        setState(() {
                          _dropDownButton2 = itemValue;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: DropdownButton(
                      value: _dropDownButton1,
                      underline: Container(
                        color: Colors.transparent,
                      ),
                      icon:
                          Icon(Icons.keyboard_arrow_down, color: Colors.black),
                      iconSize: 30,
                      items: <String>["Seleccione", "Labores"]
                          .map((String valueItem) {
                        return DropdownMenuItem<String>(
                            value: valueItem, child: Text(valueItem));
                      }).toList(),
                      onChanged: (String valuItem) {
                        setState(() {
                          _dropDownButton1 = valuItem;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("TOTAL:",
                        style: TextStyle(
                            color: Color.fromARGB(255, 150, 3, 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text("0%",
                        style: TextStyle(
                            color: Color.fromARGB(255, 150, 3, 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text("#0",
                        style: TextStyle(
                            color: Color.fromARGB(255, 150, 3, 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20))
                  ],
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            height: 570,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15, right: 8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 150, 3, 3),
                    child: Icon(Icons.add),
                    onPressed: (){
                      Navigator.of(context).pushNamed("/labores");
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//MAPA
class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  String _dropDownButton1 = "Seleccione";
  String _dropDownButton2 = "Seleccione";
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
              child: Row(children: <Widget>[
            Container(
              width: 190,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: DropdownButton(
                    value: _dropDownButton2,
                    isExpanded: true,
                    underline: Container(
                      color: Colors.transparent,
                    ),
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    iconSize: 30,
                    items: <String>["Seleccione", "Operarios"]
                        .map((String valueItem) {
                      return DropdownMenuItem<String>(
                          value: valueItem, child: Text(valueItem));
                    }).toList(),
                    onChanged: (String itemValue) {
                      setState(() {
                        _dropDownButton2 = itemValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: DropdownButton(
                    value: _dropDownButton1,
                    underline: Container(
                      color: Colors.transparent,
                    ),
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    iconSize: 30,
                    items: <String>["Seleccione", "Labores"]
                        .map((String valueItem) {
                      return DropdownMenuItem<String>(
                          value: valueItem, child: Text(valueItem));
                    }).toList(),
                    onChanged: (String valuItem) {
                      setState(() {
                        _dropDownButton1 = valuItem;
                      });
                    },
                  ),
                ),
              ),
            ),
          ])),
          Container(
            height: 600,
            width: 380,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 150, 3, 3),
                            child: Icon(Icons.arrow_downward),
                            onPressed: null),
                        Container(
                          width: 150,
                          height: 40,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.cloud),
                                Switch(
                                    activeColor: Color.fromARGB(255, 150, 3, 3),
                                    value: _switchValue,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _switchValue = value;
                                      });
                                    }),
                                Icon(Icons.mobile_screen_share)
                              ]),
                        ),
                        FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 150, 3, 3),
                            child: Icon(Icons.add),
                            onPressed: null)
                      ])),
            ),
          )
        ],
      ),
    );
  }
}
