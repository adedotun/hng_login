import 'package:flutter/material.dart';

void main() => runApp(new Login());

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new IndexPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class IndexPage extends StatefulWidget{
  @override
  State createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> with SingleTickerProviderStateMixin{


  @override
  void initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0x081748),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: new EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 100,
            ),
            new Form(
                child: new Theme(data: new ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 20.0),
                          child: new TextFormField(
                            decoration: new InputDecoration(
                                hintText: "Email Address",
                                icon: Icon(Icons.email), fillColor: Colors.white
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 25.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              hintText: "Password",
                              icon: Icon(Icons.lock), fillColor: Colors.white,

                            ),
                            obscureText: true,

                          ),
                        ),
                      ],
                    )
                )
            ),
            Container(
                width: 200,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                        child: new Text("LOGIN"),
                        textColor: Colors.black,
                        onPressed: ()=>{
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => Login()),)
                        }),
                    RaisedButton(
                        child: new Text("SIGN UP"),
                        textColor: Colors.black,
                        onPressed: ()=>{
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => Login()),)
                        }),
                  ],
                )
            ),

          ],
        ),

      ),
    );
  }
}

