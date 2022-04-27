import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  Widget childCard;
  Color color;
  Function? onTap;

  ReusableCard({
    required this.childCard,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null
          ? () {
              onTap!();
            }
          : null,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: childCard,
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  String textIcon;
  IconData icon;

  IconContent({
    required this.icon,
    required this.textIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          this.icon,
          size: 70.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          textIcon,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ],
    );
  }
}

class InputIconButtonContent extends StatelessWidget {

  IconData icon;
  Function onPressed;

  InputIconButtonContent({required this.icon, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Colors.greenAccent,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      child: FaIcon(icon),
      onPressed: () {
        onPressed();
      },
    );
  }
}

class NavigatorButton extends StatelessWidget {

  String text;
  Function onTap;

  NavigatorButton({required this.text, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        height: 80.0,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 12,
        ),
        color: const Color(0xff52b69a),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
