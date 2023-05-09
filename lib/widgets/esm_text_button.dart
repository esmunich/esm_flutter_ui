import 'package:esm_flutter_ui/esm_flutter_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EsmTextButton extends StatefulWidget {
  final String displayText;
  final VoidCallback onPressed;
  const EsmTextButton(
      {super.key, required this.displayText, required this.onPressed});

  @override
  State<EsmTextButton> createState() => _EsmTextButtonState();
}

class _EsmTextButtonState extends State<EsmTextButton> {
  late final theme = Theme.of(context);
  late final mediaQuery = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: EsmCard(
        contents: Center(
          child: Text(widget.displayText,
              style: theme.textTheme.displaySmall?.copyWith(
                  fontSize: mediaQuery.height * 0.03,
                  color: theme.colorScheme.primary)),
        ),
      ),
    );
  }
}
