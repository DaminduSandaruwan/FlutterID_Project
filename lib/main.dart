import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: DamiCard(

  )
));

class DamiCard extends StatefulWidget {
  @override
  _DamiCardState createState() => _DamiCardState();
}

class _DamiCardState extends State<DamiCard> {

  int anoLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Anonymous ID Card "),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            anoLevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/MyPhoto.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Damindu Sandaruwan',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT ANONYMOUS LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$anoLevel',
              style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),

            Text(
              'DESCRIPTION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "I'm Undergraduate Student of University of Sri Jayewardhanapura",
              style: TextStyle(
                color: Colors.blue[600],
                letterSpacing: 2.0,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'kgdsbandara@gmail.com',
                  style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


