import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_conxn_project_flutter/Theme.dart';

import '../Dialogs/MentorMenteeAskingDialog.dart';

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
          GestureDetector(
            onTap: () {

            },
            child: Row(
              children: [
                Icon(Icons.arrow_back_sharp, color: theme.secondaryHeaderColor,size: 18,),
                SizedBox(width: 4,),
                Text("Buddy System", style: theme.textTheme.bodyLarge),
              ],
            ),
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
          SizedBox(height: 12,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: primaryFillButton,
                onPressed: () => openBottomDrawer(context,theme), child: Text(
              "Become a Mentor",
              style: smallPrimaryTextStyle,
            )),
          ),
          SizedBox(height: 12,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: primaryNonFillButton.copyWith(
                  backgroundColor: MaterialStateProperty.all(theme.scaffoldBackgroundColor),
                ),
                onPressed: () => openBottomDrawer(context,theme), child: Text(
              "Become a Mentee",
              style: smallPrimaryTextStyle.copyWith(
                color: theme.brightness == Brightness.dark ? Colors.white : theme.primaryColor,
              ),
            )),
          )
        ],
      ),
    );
  }
}
