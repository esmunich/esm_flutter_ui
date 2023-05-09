import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EsmCard extends StatefulWidget {
  final Widget contents;
  final double? elevation;
  const EsmCard({super.key, required this.contents, this.elevation});

  @override
  State<EsmCard> createState() => _EsmCardState();
}

class _EsmCardState extends State<EsmCard> {
  late final theme = Theme.of(context);
  late final mediaQuery = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: widget.elevation ?? 4,
        color: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(mediaQuery.width * 0.025),
        ),
        child: Padding(
            padding: EdgeInsets.all(mediaQuery.height * 0.0175),
            child: widget.contents));
  }
}
