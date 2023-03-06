import 'package:flutter/material.dart';

Card miCardImageCarga() =>
  Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: [
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