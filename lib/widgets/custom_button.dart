import 'package:flutter/material.dart';

import '../conestants.dart';
import '../services/theme.dart';

//import '.../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.heroTag,
    @required this.color,
     this.width=140,
  }) : super(key: key);
  final Function() onPressed;
  final String text;
  final String heroTag;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120.0,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          border: Border.all(color: orangeColor),
        ),
        child: FloatingActionButton.extended(
          heroTag: heroTag,
          backgroundColor: purpleColor,
//        icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),
          onPressed: onPressed,
          label: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: KTextColor,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
