import 'package:flutter/material.dart';

import 'colortheme.dart';



class FieldCustom extends StatelessWidget {
  final String hintext;
  final IconData icon;
  
  const FieldCustom({Key key, this.icon, this.hintext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: colorA,
                  blurRadius: 2,
                  offset: Offset(1, 1),
                )
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  icon,
                  color: colorA,
                ),
                hintText: hintext),
          ),
        )
      ],
    );
  }
}


class FieldCustomPass extends StatelessWidget {
  final String hintext;
  final IconData icon;
  
  const FieldCustomPass({Key key, this.icon, this.hintext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: colorA,
                  blurRadius: 2,
                  offset: Offset(1, 1),
                )
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  icon,
                  color: colorA,
                ),
                hintText: hintext),
          ),
        )
      ],
    );
  }
}