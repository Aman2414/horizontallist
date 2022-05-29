import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final IconData iconData;
  final double iconSize;

  const CustomButton({
    Key? key,
    required this.title,
    required this.iconData,
    this.iconSize = 20,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: Ink(
        height: 60,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                  // margin: EdgeInsets.only(left: 20),
                  child: Icon(
                widget.iconData,
                color: Theme.of(context).primaryColor,
                size: widget.iconSize,
              )),
              SizedBox(
                width: 26,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
