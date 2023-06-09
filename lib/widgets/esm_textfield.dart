import 'package:flutter/material.dart';

class EsmTextField extends StatefulWidget {
  final double? width;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final String? hintText;

  const EsmTextField({
    super.key,
    this.width,
    this.textEditingController,
    this.hintText,
    this.textInputType,
  });

  @override
  State<EsmTextField> createState() => _EsmTextFieldState();
}

class _EsmTextFieldState extends State<EsmTextField> {
  late final theme = Theme.of(context);
  late final mediaQuery = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? mediaQuery.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(mediaQuery.width * 0.1),
          color: theme.colorScheme.secondary),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: TextField(
          cursorColor: theme.colorScheme.surface,
          controller: widget.textEditingController,
          style: theme.textTheme.displaySmall?.copyWith(
            fontSize: mediaQuery.height * 0.03,
          ),
          keyboardType: widget.textInputType ?? TextInputType.name,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintStyle: TextStyle(
                color: theme.colorScheme.surface,
              ),
              hintText: widget.hintText,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
