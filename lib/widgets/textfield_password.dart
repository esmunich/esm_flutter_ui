import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFieldPassword extends StatefulWidget {
  final double? width;
  final TextEditingController? textEditingController;
  final String? hintText;
  const TextFieldPassword(
      {super.key, this.width, this.textEditingController, this.hintText});

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  late final theme = Theme.of(context);
  late final mediaQuery = MediaQuery.of(context).size;
  late var hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? mediaQuery.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(mediaQuery.width * 0.1),
          color: theme.colorScheme.secondary),
      child: Row(
        children: [
          SizedBox(
            width: mediaQuery.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 32,
              ),
              child: TextField(
                cursorColor: theme.colorScheme.surface,
                controller: widget.textEditingController,
                style: theme.textTheme.displaySmall?.copyWith(
                  fontSize: mediaQuery.height * 0.03,
                ),
                textAlign: TextAlign.center,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: theme.colorScheme.surface,
                  ),
                  hintText: widget.hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            child: Icon(
              hidePassword ? Icons.visibility : Icons.visibility_off,
              color: theme.colorScheme.surface,
            ),
          ),
        ],
      ),
    );
  }
}
