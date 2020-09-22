import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   final _controller1 = TextEditingController();
   final _controller2 = TextEditingController();

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
              "CONFIGURACIÓN",
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
     
    final logo = Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/configuration.png"),
              fit: BoxFit.cover
            )
          ),
          
          
            
          
        ), 
      );

    final camposText =  Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 70,
                      color: Colors.transparent,
                      child:Align(
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
                              controller: _controller1,
                              cursorColor: Colors.black,
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
                                hintText: "Usuario",
                                suffixIcon: Icon(Icons.person,color: Colors.grey)
                              ),
                            ),
                          ),
                        ),
                    )
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 70,
                      color: Colors.transparent,
                      child:Align(
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
                              controller: _controller2,
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
                  ),
                )
              ],    
            ),
          ),
      );

    final button = Align(
        alignment: Alignment.center,
        child: Container(
          width: 250,
          height: 60,
          color:Colors.transparent,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: (){print("Pressed the FlatButton");Navigator.of(context).pushNamed("/Fincas");},
            child: Text("Ingresar"),
            textColor: Colors.black,
            color: Color.fromARGB(255, 212, 210, 212),
          
          ),
        ),
      );

     return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
          color: Color.fromARGB(255,234, 232, 234),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              appBar,
              logo,
              camposText,
              button
            ],
          ),
        )
    );
  }
}