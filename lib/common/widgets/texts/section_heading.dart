import 'package:flutter/material.dart';

class CSectionHeading extends StatelessWidget {
  const CSectionHeading({
    super.key,
    required this.sectionTitle,
    this.actionButtonTitle = "View all",
    this.sectionTitleColor,
    this.showActionButton = true,
    this.onActionButtonPressed,
  });

  final String sectionTitle, actionButtonTitle;
  final Colors? sectionTitleColor;
  final bool showActionButton;
  final void Function()? onActionButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onActionButtonPressed,
            child: Text(
              actionButtonTitle,
              style: Theme.of(context).textTheme.headlineSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
    );
  }
}
