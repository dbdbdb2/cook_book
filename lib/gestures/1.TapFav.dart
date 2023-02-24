import 'package:flutter/material.dart';

class FavIcon extends StatefulWidget {

  const FavIcon({Key? key}) : super(key: key);

  State<FavIcon> createState() => _FavIconState();

}

class _FavIconState extends State<FavIcon> {
  bool isSelected = false;

  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },

      child:  Icon(
        isSelected ? Icons.favorite: Icons.favorite_border,
        size: 60,
        color: isSelected? Colors.red: Colors.black ,
      )
    );
  }
}