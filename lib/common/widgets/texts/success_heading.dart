import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class fSectionHeading extends StatelessWidget {
  const fSectionHeading({
    super.key,
   // this.textColor,

    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "View all",
    this.onPressed,
    this.textColor,
    this.onTap,
  });

  //final Color? textColor;
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  //final void Function()? onPressed;
  final VoidCallback? onPressed;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return
     // Padding(
     //padding: const EdgeInsets.only(right: 155,top: 15),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

          if (showActionButton)
            TextButton(onPressed: onPressed, child: Text(buttonTitle))
        ],

      );
  }
}