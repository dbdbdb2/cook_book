import 'package:flutter/material.dart';

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