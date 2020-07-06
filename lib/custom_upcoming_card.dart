import 'package:flutter/material.dart';

class UpComingCard extends StatelessWidget {

  final String title;
  final double value;
  final Color color;

  UpComingCard({this.title, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 15.0
      ),
      child: Container(
        width: 120.0,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(25.0))
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 30.0,),
              Text("$value",
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
