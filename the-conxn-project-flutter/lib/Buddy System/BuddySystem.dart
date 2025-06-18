import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buddysystem extends StatelessWidget {
  const Buddysystem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.scaffoldBackgroundColor,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios, color: theme.secondaryHeaderColor),
              Text("Buddy System", style: theme.textTheme.bodyLarge),
            ],
          ),
          SizedBox(height: 24,),
          Text.rich(
            TextSpan(
              text:
                  "Choose your favourite option to create an account & save your ",
              style: theme.textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: "progress",
                  style: theme.textTheme.bodyLarge?.copyWith(color: theme.primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
