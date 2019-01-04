import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new LoginState();
  }

}

class LoginState extends State<Login> {

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),

      backgroundColor: Colors.white,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[

            new Padding(padding: EdgeInsets.all(30)),


            new Image.asset(
              "images/face.png",
              width: 90,
              height: 90,
              color: Colors.deepPurpleAccent,
            ),

            new Padding(padding: EdgeInsets.all(35)),

            new Container(
              height: 180,
              width: 380,
              color: Colors.white10,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person)
                    ),
                  ),

                  new TextField(
                    controller:  _passwordController,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: new Icon(Icons.lock),

                    ),
                  ),
                  
                  new Padding(padding: new EdgeInsets.all(20)),

                  new Center(
                    child: new Row(
                      children: <Widget>[


                        new Container(
                          margin: const EdgeInsets.only(left: 38),
                          child: new RaisedButton(
                              onPressed: () => debugPrint("Clicked"),
                              color: Colors.redAccent,
                              child: new Text("Login",
                              style: new TextStyle(color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300),),
                              ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}