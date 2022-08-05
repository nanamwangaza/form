import 'package:flutter/material.dart';

class NumberOfStars extends StatefulWidget {
  bool isStarred = true;
  int numberOfStars = 41;

  // const NumberOfStars({Key? key}) : super(key: key);

  @override
  State<NumberOfStars> createState() => _NumberOfStarsState();
}

class _NumberOfStarsState extends State<NumberOfStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                widget.isStarred = !widget.isStarred;
                if (widget.isStarred) {
                  widget.numberOfStars++;
                } else
                  widget.numberOfStars--;
              });
            },
            icon: Icon(
              widget.isStarred ? Icons.star : Icons.star_outline,
              color: Colors.red,
            )),
        Text('${widget.numberOfStars}')
      ],
    );
  }
}
