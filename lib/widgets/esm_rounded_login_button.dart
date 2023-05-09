import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EsmRoundedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String? displayText;
  const EsmRoundedButton(
      {super.key, required this.onPressed, this.displayText});

  @override
  State<EsmRoundedButton> createState() => _EsmRoundedButtonState();
}

class _EsmRoundedButtonState extends State<EsmRoundedButton> {
  late final theme = Theme.of(context);
  late final mediaQuery = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaQuery.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          mediaQuery.width * 0.1,
        ),
        border: Border.all(
            color: theme.colorScheme.primary, width: mediaQuery.width * 0.01),
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: TextButton(
          onPressed: widget.onPressed,
          child: Text(widget.displayText ?? "",
              style: theme.textTheme.displaySmall?.copyWith(
                  fontSize: mediaQuery.height * 0.03,
                  color: theme.colorScheme.primary)),
        ),
      ),
    );
  }
}
