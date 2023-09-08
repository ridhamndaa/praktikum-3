import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Praktik_Text(),

    );
  }
}

class Praktik_Text extends StatelessWidget {
  const Praktik_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
      'Ridho Amanda / 4312101120',
      style: TextStyle(
          color: Colors.blue,
          backgroundColor: Colors.pink,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    ));
  }
}

class Praktik_Icon extends StatelessWidget {
  const Praktik_Icon({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.access_alarm),
                Text('Alarm'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.phone),
                Text('Phone'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.book),
                Text('Book'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Praktik_Container extends StatelessWidget {
  const Praktik_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purple),
            // color: Colors.purple,
            child: Text(
              'Haiii Raman',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )));
  }
}

class Praktik_Sizedbox extends StatelessWidget {
  const Praktik_Sizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Text(
          "A",
          style: TextStyle(fontSize: 30.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "B",
          style: TextStyle(fontSize: 30.0),
        )
      ],
    ));
  }
}

class Praktik_Button extends StatelessWidget {
  const Praktik_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
          ),
          child: Text("Raised Button"),
          onPressed: () {},
        ),
        MaterialButton(
          color: Colors.lime,
          child: Text("Material Button"),
          onPressed: () {},
        ),
        TextButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightGreen,
          ),
          child: Text("FlatButton Button"),
          onPressed: () {},
        ),
      ],
    ));
  }
}


class Praktik_TextFormField extends StatelessWidget {
  const Praktik_TextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              SizedBox(height: 16.0), // Adding some spacing
              ElevatedButton(
                onPressed: () {
                  // Handle login button pressed
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* Terjadi Eror
 class MyAlertDialog extends StatelessWidget {
 const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: MaterialButton(
        child: Text("Alert Dialog"),
        textColor: Colors.white,
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => NetworkGiffyDialog(
              image: Image.asset('assets/img/google-jacket.gif'),
              title: Text(
                'Men Wearing Jackets',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              description: Text(
                'This is a men wearing jackets',
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              onOkButtonPressed: () {

                Navigator.of(context).pop();
              },
            ),
          );
        },
      ),
    );
  }
}

*/