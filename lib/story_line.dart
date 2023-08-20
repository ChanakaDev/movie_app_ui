import 'package:flutter/material.dart';

class Storyline extends StatelessWidget {
  const Storyline(this.storyline, {super.key});
  final String storyline;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Story line',
          style: textTheme.titleMedium?.copyWith(fontSize: 18.0),
        ),
        const SizedBox(height: 8.0),
        Text(
          storyline,
          style: textTheme.bodyMedium?.copyWith(
            color: Colors.black45,
            fontSize: 16.0,
          ),
        ),
        // No expand-collapse in this tutorial, we just slap the "more"
        // button below the text like in the mockup.
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'more',
              style: textTheme.bodyMedium
                  ?.copyWith(fontSize: 16.0, color: theme.colorScheme.secondary),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 18.0,
              color: theme.colorScheme.secondary,
            ),
          ],
        ),
      ],
    );
  }
}
