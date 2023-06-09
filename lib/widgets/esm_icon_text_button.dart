import 'package:esm_flutter_ui/esm_flutter_ui.dart';
import 'package:flutter/material.dart';

class EsmIconTextButton extends StatefulWidget {
  final IconData icon;
  final String displayText;
  final VoidCallback onPressed;
  final bool clickable;
  const EsmIconTextButton(
      {super.key,
      required this.icon,
      required this.displayText,
      required this.onPressed,
      required this.clickable});

  @override
  State<EsmIconTextButton> createState() => _EsmIconTextButtonState();
}

class _EsmIconTextButtonState extends State<EsmIconTextButton> {
  late final theme = Theme.of(context);
  late final mediaQuery = MediaQuery.of(context).size;
  late var elevation = 4.0;
  late bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashFactory: widget.clickable
              ? InkRipple.splashFactory
              : NoSplash.splashFactory),
      onPressed: () {
        if (widget.clickable) {
          widget.onPressed();
        }
      },
      child: EsmCard(
        elevation: elevation,
        contents: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  widget.icon,
                  size: mediaQuery.height * 0.07,
                  color: theme.colorScheme.primary,
                ),
                Padding(
                  padding: EdgeInsets.only(left: mediaQuery.width * 0.02),
                  child: Text(
                    widget.displayText,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: mediaQuery.width * 0.05,
                        color: theme.colorScheme.primary),
                  ),
                ),
              ],
            ),
            if (widget.clickable)
              Padding(
                padding: EdgeInsets.only(right: mediaQuery.width * 0.04),
                child: Icon(
                  Icons.chevron_right,
                  color: theme.colorScheme.primary,
                ),
              )
          ],
        ),
      ),
    );
  }
}
