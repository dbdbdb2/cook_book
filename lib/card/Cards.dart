import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey,

        appBar: AppBar(
          title: Text('CARDS'),
          centerTitle: true,
        ),

        body: ListView(
          children: [
            miCard(),
            miCardImage(),
            miCardDesign(),
            miCardImageCarga(),
          ],
        ),
    );
  }

  Card miCard() =>
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(15),
      elevation: 10,

      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Title', style: TextStyle(fontSize: 35)),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () => {}, child: Text('Accept')),
              TextButton(onPressed: () => {}, child: Text('Cancel'), style:
              TextButton.styleFrom(foregroundColor: Colors.red),)
            ],
          )
        ],
      ),
    );
  }

  Card miCardImage() => Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('Lake', style: TextStyle(fontSize: 20)),
        ),
      ],
    ),
  );

  Card miCardImageCarga() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://staticuestudio.blob.core.windows.net/buhomag/2016/03/01195417/pexels-com.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fit: BoxFit.cover,
            height: 260,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Paisaje con carga'),
          )
        ],
      ),
    );
  }

  Card miCardDesign() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card.'),
            leading: Icon(Icons.call_missed_outgoing_rounded),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () => {}, child: Text('Aceptar')),
              TextButton(onPressed: () => {}, child: Text('Cancelar'), style:
              TextButton.styleFrom(foregroundColor: Colors.red),)
            ],
          )
        ],
      ),
    );
  }
