
import 'dart:async';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _valor = "supervisor";
  String _fincas = "Finca Banano";
  String _imagePath = "supervisor";
  String _iconSync = "sync";
  TextEditingController _controller;


  @override
  void didChangeDependencies() {


    super.didChangeDependencies();
  }
  void checkPassword(int answer){
   
      // showDialog(
      //   context: context,
      //   builder: (context) => AlertDialog(
      //     title: Row(
      //       children: <Widget> [
      //        Icon(Icons.error,color:Colors.red),
      //         Text(
      //       "Sin Datos",
      //       style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //               fontSize: 12,
      //               color: Colors.black
      //       )
      //     ),
      //       ],
      //     ),
      //     content:Text("Por favor Ingresa un Código"),
      //     actions: <Widget>[
      //     FlatButton(
      //         child: Text(
      //           "Ok",
      //           style: TextStyle(color:Color.fromARGB(255, 150, 3, 3)),
      //         ),
      //         onPressed: (){
      //           Navigator.of(context).pop();
      //         },
      //       ),
      //     ],
      //   ),
      // ); 
      showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: <Widget> [
            Image.asset("assets/image/logo_Inventa.png",width: 30,height: 30,),
            Text(
          "Verificación de identidad",
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black
          )
        ),
          ],
        ),
        content:Text("¿Eres Prueba Inventa?"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Si",
              
              style: TextStyle(color:Color.fromARGB(255, 150, 3, 3)),
            ),
            onPressed: (){
              
              Navigator.of(context).pop(true);
            },
          ),
        FlatButton(
            child: Text(
              "No",
              style: TextStyle(color:Color.fromARGB(255, 150, 3, 3)),
            ),
            onPressed: (){
              Navigator.of(context).pop(false);
            },
          ),
        ],
      ),
    ).then((value) => value ? Navigator.of(context).pushNamed("/Inicio"): print("Verifique sus Datos"));
}
  
  
  @override
  Widget build(BuildContext context) {
    final appBar = Align(
      alignment: Alignment.topCenter,
      child:Container(
        margin: EdgeInsets.only(
          top:50
        ),
        width: 400,
        height: 70,
        color: Color.fromARGB(255,234, 232, 234),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(child: Image.asset("assets/image/"+_iconSync+".png",width: 50,height: 50,),onTap: (){
                print("Click en la imagen");
                setState(() {
                  Timer(Duration(seconds: 3), ()=> _iconSync = _iconSync == "sync" ? "syncGreen":"sync");
                });
              },),
              InkWell(child: Image.asset("assets/image/configuration.png",width: 50,height: 50,),onTap: (){Navigator.of(context).pushNamed("/settings");},),
            ],
          ),
        ),     
      )
    );

    final cargo = Align(
               alignment: Alignment.topCenter,
               child: Container(
                 margin: EdgeInsets.only(
                   top:30
                 ),
                 width: 130,
                 height: 150,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(15))
                 ),
                 child: Column(
                   children: <Widget> [
                     Image.asset("assets/image/"+_imagePath+".png",width: 120,height: 120,),
                     Expanded(
                        child: DropdownButton<String>(
                        value: _valor,
                        iconSize: 24,
                        elevation: 20,
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                        items: <String>["supervisor","operario"].map((String valueItem) {
                          return DropdownMenuItem<String>(
                              value: valueItem,
                              child: Text(valueItem)
                            );
                        }).toList(),
                        onChanged:(String newValue){
                          setState(() {
                              _valor = newValue;
                              print(_valor);
                              _imagePath = newValue;
                          });
                        }
                    ),
                     ),
                   ],
                 ),
               ), 
              );
    
    final camposText = Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 120
                    ),
                    width: 300,
                    height: 150,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Row(
                          children: <Widget> [
                            Expanded(
                                child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 3),
                                    child: DropdownButton(
                                    focusColor: Color.fromARGB(255, 150, 3, 3),
                                    underline: Container(color: Colors.transparent),
                                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                                    iconSize: 30,
                                    elevation: 8,
                                    value: _fincas,
                                    isExpanded: true,
                                    items:<String>["Finca Banano","Finca Palma"].map((String valueItem){
                                        return DropdownMenuItem<String>(
                                          value: valueItem,
                                          child: Text(valueItem)
                                        );
                                    }).toList(),
                                    onChanged: (String newValue){
                                      setState(() {
                                          _fincas = newValue;
                                          print(_fincas);
                                      });
                                    }
                                ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Image.asset("assets/image/go.png",width: 40,height: 40,)
                          ],
                      ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: TextField(
                              //  expands: false,
                               maxLines: 1,
                                obscureText: true,
                                controller: _controller,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder:OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromARGB(255, 150, 3, 3)),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  hintText: "Código",
                                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey)
                                ),
                              ),
                            ),
                          ),
                          )
                      ],    
                    ),
                  ),
              );

    final buttonLogin = Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(
                    top:70
                  ),
                  width: 300,
                  height: 60,
                  color:Colors.transparent,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: (){checkPassword(1);},
                    child: Text("Iniciar Sesión"),
                    textColor: Colors.black,
                    color: Color.fromARGB(255, 212, 210, 212),
                  
                  ),
                ),
              );
    
    final versionText =  Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(
                  top:70
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Text(
                    "V 4.00",
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                ),
              ),
            );
    
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
          color: Color.fromARGB(255,234, 232, 234),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              appBar,
              cargo,
              camposText,
              buttonLogin,
              versionText
            ],
          ),
        )
    );
  }
}